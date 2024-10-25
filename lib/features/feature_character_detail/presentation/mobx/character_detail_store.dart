import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/entities/character_detail_entity.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/usecases/get_character_detail_usecase.dart';
import 'package:rick_and_morty/core/dependency_injection/dependency_injection.dart';

part 'character_detail_store.g.dart';

class CharacterDetailStore = _CharacterDetailStore with _$CharacterDetailStore;

abstract class _CharacterDetailStore with Store {
  final GetCharacterDetailUseCase _getCharacterDetailUseCase;

  _CharacterDetailStore({
    required GetCharacterDetailUseCase getCharacterDetailUseCase,
  }) : _getCharacterDetailUseCase = getCharacterDetailUseCase;

  CharacterDetailEntity? character;

  @observable
  bool isLoading = false;

  @observable
  bool hasError = false;

  @action
  Future<void> fetchCharacterDetail(String id) async {
    isLoading = true;
    try {
      character = await _getCharacterDetailUseCase(id);
    } on Exception catch (e) {
      debugPrint(e.toString());
      hasError = true;
    } finally {
      isLoading = false;
    }
  }
}
