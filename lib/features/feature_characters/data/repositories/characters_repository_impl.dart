import 'package:rick_and_morty/features/feature_characters/data/data_source/remote/characters_remote_data_source.dart';
import 'package:rick_and_morty/features/feature_characters/domain/entities/character_page_entity.dart';
import 'package:rick_and_morty/features/feature_characters/domain/repositories/characters_repository.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersRemoteDataSource remoteDataSource;

  const CharactersRepositoryImpl(this.remoteDataSource);

  @override
  Future<CharacterPageEntity> getCharacters(int page) {
    return remoteDataSource.getCharacters(page);
  }
}
