import 'package:rick_and_morty/features/feature_character_detail/domain/entities/enums/character_gender_enum.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/entities/enums/character_species_enum.dart';
import 'package:rick_and_morty/features/feature_character_detail/domain/entities/enums/character_status_enum.dart';

class CharacterDetailEntity {
  final int id;
  final String name;
  final CharacterStatus status;
  final CharacterSpecies species;
  final CharacterGender gender;
  final String imageUrl;

  const CharacterDetailEntity({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.imageUrl,
  });
}
