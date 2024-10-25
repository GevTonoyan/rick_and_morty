import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:rick_and_morty/features/feature_characters/domain/characters_domain.dart';
import 'package:rick_and_morty/features/feature_characters/domain/entities/character_page_entity.dart';
import 'package:rick_and_morty/features/feature_characters/domain/usecases/get_liked_characters_usecase.dart';
import 'package:rick_and_morty/features/feature_characters/domain/usecases/toggle_liked_character_usecase.dart';

part 'characters_store.g.dart';

class CharactersStore = _CharactersStore with _$CharactersStore;

abstract class _CharactersStore with Store {
  final GetCharactersUsecase _getCharactersUsecase;
  final GetLikedCharactersUseCase _getLikedCharactersUseCase;
  final ToggleLikedCharacterUseCase _toggleLikedCharacterUseCase;

  _CharactersStore({
    required GetCharactersUsecase getCharactersUsecase,
    required GetLikedCharactersUseCase getLikedCharactersUseCase,
    required ToggleLikedCharacterUseCase toggleLikedCharacterUseCase,
  })  : _getCharactersUsecase = getCharactersUsecase,
        _getLikedCharactersUseCase = getLikedCharactersUseCase,
        _toggleLikedCharacterUseCase = toggleLikedCharacterUseCase;

  @observable
  ObservableList<CharacterEntity> characters =
      ObservableList<CharacterEntity>();

  @observable
  ObservableSet<int> likedCharacterIds = ObservableSet<int>();

  @observable
  bool isLoading = false;

  @observable
  bool hasError = false;

  @observable
  int currentPage = 1;

  @observable
  int totalPages = 1;

  @action
  Future<void> fetchCharacters({bool isLoadMore = false}) async {
    if (isLoading || (isLoadMore && currentPage > totalPages)) return;

    isLoading = true;

    try {
      final result = await _getCharactersUsecase(currentPage);
      if (isLoadMore) {
        characters.addAll(result.characters);
      } else {
        characters = ObservableList.of(result.characters);
      }

      totalPages = result.pages;
      currentPage++;
    } on Exception catch (e) {
      debugPrint(e.toString());
      hasError = true;
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> toggleLikeCharacter(int characterId) async {
    if (likedCharacterIds.contains(characterId)) {
      likedCharacterIds.remove(characterId); // Unlike
    } else {
      likedCharacterIds.add(characterId); // Like
    }

    // Data persistence we can do in background
    _toggleLikedCharacterUseCase(characterId);
  }

  Future<void> fetchLikedCharacters() async {
    final res = await _getLikedCharactersUseCase();
    likedCharacterIds = ObservableSet<int>.of(res);
  }

  @action
  Future<void> refreshCharacters() async {
    currentPage = 1;
    characters.clear();
    await fetchCharacters();
  }
}
