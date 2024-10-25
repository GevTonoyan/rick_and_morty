import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_detail_dto.freezed.dart';

part 'character_detail_dto.g.dart';

@freezed
class CharacterDetailDto with _$CharacterDetailDto {
  const factory CharacterDetailDto({
    required int id,
    @Default('') String name,
    @Default('') String status,
    @Default('') String species,
    @Default('') String gender,
    required String image,
  }) = _CharacterDetailDto;

  factory CharacterDetailDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterDetailDtoFromJson(json);
}
