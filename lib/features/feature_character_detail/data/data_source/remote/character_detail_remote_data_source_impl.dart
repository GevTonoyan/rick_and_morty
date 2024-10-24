import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/api_provider/http_provider.dart';
import 'package:rick_and_morty/features/feature_character_detail/data/data_source/remote/character_detail_remote_data_source.dart';
import 'package:rick_and_morty/features/feature_character_detail/data/models/dto/character_detail_dto.dart';
import 'package:rick_and_morty/features/feature_character_detail/data/models/mappers/character_detail_mapper.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/entities/character_detail_entity.dart';

class CharacterDetailRemoteDataSourceImpl
    implements CharacterDetailRemoteDataSource {
  final HttpProvider apiProvider;
  final CharacterDetailMapper characterDetailMapper;

  const CharacterDetailRemoteDataSourceImpl({
    required this.apiProvider,
    required this.characterDetailMapper,
  });

  @override
  Future<CharacterDetailEntity> getCharacterDetail(String id) async {
    final response = await apiProvider.get(
      'character',
      path: '/$id',
    );

    final res = response as Response<dynamic>;
    final dto = CharacterDetailDto.fromJson(res.data as Map<String, dynamic>);
    return characterDetailMapper.map(dto);
  }
}
