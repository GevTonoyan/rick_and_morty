import 'package:freezed_annotation/freezed_annotation.dart';

// To generate all nessessary methods (deep copy, fromJson, etc.)
part 'character_dto.freezed.dart';

// To generate toJson method for server communication
part 'character_dto.g.dart';

@freezed
class CharacterPageDto with _$CharacterPageDto {
  const factory CharacterPageDto({
    required Info info,
    required List<CharacterDto> results,
  }) = _CharacterPageDto;

  factory CharacterPageDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterPageDtoFromJson(json);
}

@freezed
class Info with _$Info {
  const factory Info({
    required int count,
    required int pages,
    String? next,
    String? prev,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}

@freezed
class CharacterDto with _$CharacterDto {
  const factory CharacterDto({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
    required String created,
  }) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterDtoFromJson(json);
}
