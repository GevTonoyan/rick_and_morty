import 'package:rick_and_morty/features/feature_characters/data/models/dto/character_dto.dart';
import 'package:rick_and_morty/features/feature_characters/domain/entities/character_page_entity.dart';

abstract interface class CharacterPageMapper {
  CharacterPageEntity map(CharacterPageDto dto);
}

class CharacterPageMapperImpl implements CharacterPageMapper {
  @override
  CharacterPageEntity map(
    CharacterPageDto dto,
  ) {
    return CharacterPageEntity(
      count: dto.info.count,
      pages: dto.info.pages,
      characters: dto.results.map((e) {
        return CharacterEntity(
          id: e.id,
          name: e.name,
          imageUrl: e.image,
        );
      }).toList(),
    );
  }
}
