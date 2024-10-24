// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterDetailDtoImpl _$$CharacterDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterDetailDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String? ?? '',
      status: json['status'] as String? ?? '',
      species: json['species'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      image: json['image'] as String,
    );

Map<String, dynamic> _$$CharacterDetailDtoImplToJson(
        _$CharacterDetailDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'image': instance.image,
    };
