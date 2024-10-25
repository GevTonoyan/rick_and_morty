import 'package:rick_and_morty/features/feature_characters/domain/entities/character_page_entity.dart';
import 'package:rick_and_morty/features/feature_characters/domain/repositories/characters_repository.dart';

class GetCharactersUsecase {
  final CharactersRepository repository;

  const GetCharactersUsecase(this.repository);

  Future<CharacterPageEntity> call(int page) async {
    return await repository.getCharacters(page);
  }
}
