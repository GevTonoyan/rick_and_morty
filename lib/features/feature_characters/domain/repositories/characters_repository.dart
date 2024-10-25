import 'package:rick_and_morty/features/feature_characters/domain/entities/character_page_entity.dart';

abstract interface class CharactersRepository {
  Future<CharacterPageEntity> getCharacters(int page);

  Future<Set<int>> getLikedCharacters();

  Future<void> toggleLikedCharacter(int id);
}
