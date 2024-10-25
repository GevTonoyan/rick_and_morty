import 'package:rick_and_morty/features/feature_character_detail/domain/entities/character_detail_entity.dart';

abstract interface class CharacterDetailRepository {
  Future<CharacterDetailEntity> getCharacterDetail(String id);
}
