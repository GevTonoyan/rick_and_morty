import 'package:rick_and_morty/features/feature_character_detail/data/models/dto/character_detail_dto.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/entities/character_detail_entity.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/entities/enums/character_gender_enum.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/entities/enums/character_species_enum.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/entities/enums/character_status_enum.dart';

abstract interface class CharacterDetailMapper {
  CharacterDetailEntity map(CharacterDetailDto dto);
}

class CharacterDetailMapperImpl implements CharacterDetailMapper {
  @override
  CharacterDetailEntity map(CharacterDetailDto dto) {
    return CharacterDetailEntity(
      id: dto.id,
      name: dto.name,
      status: CharacterStatus.fromString(dto.status),
      species: CharacterSpecies.fromString(dto.species),
      gender: CharacterGender.fromString(dto.gender),
      imageUrl: dto.image,
    );
  }
}
