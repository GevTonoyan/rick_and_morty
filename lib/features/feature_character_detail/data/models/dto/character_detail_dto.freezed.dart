// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterDetailDto _$CharacterDetailDtoFromJson(Map<String, dynamic> json) {
  return _CharacterDetailDto.fromJson(json);
}

/// @nodoc
mixin _$CharacterDetailDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this CharacterDetailDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacterDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterDetailDtoCopyWith<CharacterDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailDtoCopyWith<$Res> {
  factory $CharacterDetailDtoCopyWith(
          CharacterDetailDto value, $Res Function(CharacterDetailDto) then) =
      _$CharacterDetailDtoCopyWithImpl<$Res, CharacterDetailDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String image});
}

/// @nodoc
class _$CharacterDetailDtoCopyWithImpl<$Res, $Val extends CharacterDetailDto>
    implements $CharacterDetailDtoCopyWith<$Res> {
  _$CharacterDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? gender = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDetailDtoImplCopyWith<$Res>
    implements $CharacterDetailDtoCopyWith<$Res> {
  factory _$$CharacterDetailDtoImplCopyWith(_$CharacterDetailDtoImpl value,
          $Res Function(_$CharacterDetailDtoImpl) then) =
      __$$CharacterDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String image});
}

/// @nodoc
class __$$CharacterDetailDtoImplCopyWithImpl<$Res>
    extends _$CharacterDetailDtoCopyWithImpl<$Res, _$CharacterDetailDtoImpl>
    implements _$$CharacterDetailDtoImplCopyWith<$Res> {
  __$$CharacterDetailDtoImplCopyWithImpl(_$CharacterDetailDtoImpl _value,
      $Res Function(_$CharacterDetailDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? gender = null,
    Object? image = null,
  }) {
    return _then(_$CharacterDetailDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterDetailDtoImpl implements _CharacterDetailDto {
  const _$CharacterDetailDtoImpl(
      {required this.id,
      this.name = '',
      this.status = '',
      this.species = '',
      this.gender = '',
      required this.image});

  factory _$CharacterDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterDetailDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String species;
  @override
  @JsonKey()
  final String gender;
  @override
  final String image;

  @override
  String toString() {
    return 'CharacterDetailDto(id: $id, name: $name, status: $status, species: $species, gender: $gender, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, status, species, gender, image);

  /// Create a copy of CharacterDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailDtoImplCopyWith<_$CharacterDetailDtoImpl> get copyWith =>
      __$$CharacterDetailDtoImplCopyWithImpl<_$CharacterDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _CharacterDetailDto implements CharacterDetailDto {
  const factory _CharacterDetailDto(
      {required final int id,
      final String name,
      final String status,
      final String species,
      final String gender,
      required final String image}) = _$CharacterDetailDtoImpl;

  factory _CharacterDetailDto.fromJson(Map<String, dynamic> json) =
      _$CharacterDetailDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get species;
  @override
  String get gender;
  @override
  String get image;

  /// Create a copy of CharacterDetailDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterDetailDtoImplCopyWith<_$CharacterDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
