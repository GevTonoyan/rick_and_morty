import 'package:rick_and_morty/features/feature_character_detail/domain/entities/character_detail_entity.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/repositories/character_detail_repository.dart';

class GetCharacterDetailUseCase {
  final CharacterDetailRepository _characterDetailRepository;

  GetCharacterDetailUseCase(this._characterDetailRepository);

  Future<CharacterDetailEntity> call(String id) =>
      _characterDetailRepository.getCharacterDetail(id);
}
