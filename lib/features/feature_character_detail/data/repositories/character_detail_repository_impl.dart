import 'dart:collection';

import 'package:rick_and_morty/features/feature_character_detail/data/data_source/remote/character_detail_remote_data_source.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/entities/character_detail_entity.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/repositories/character_detail_repository.dart';

class CharacterDetailRepositoryImpl implements CharacterDetailRepository {
  final CharacterDetailRemoteDataSource remoteDataSource;

  CharacterDetailRepositoryImpl(this.remoteDataSource);

  final HashMap<String, CharacterDetailEntity> _cache = HashMap();

  @override
  Future<CharacterDetailEntity> getCharacterDetail(String id) async {
    if (_cache.containsKey(id)) {
      return _cache[id]!;
    }
    final result = await remoteDataSource.getCharacterDetail(id);
    _cache[id] = result;
    return result;
  }
}
