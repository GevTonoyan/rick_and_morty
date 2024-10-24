// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterPageDto _$CharacterPageDtoFromJson(Map<String, dynamic> json) {
  return _CharacterPageDto.fromJson(json);
}

/// @nodoc
mixin _$CharacterPageDto {
  Info get info => throw _privateConstructorUsedError;
  List<CharacterDto> get results => throw _privateConstructorUsedError;

  /// Serializes this CharacterPageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacterPageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterPageDtoCopyWith<CharacterPageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterPageDtoCopyWith<$Res> {
  factory $CharacterPageDtoCopyWith(
          CharacterPageDto value, $Res Function(CharacterPageDto) then) =
      _$CharacterPageDtoCopyWithImpl<$Res, CharacterPageDto>;
  @useResult
  $Res call({Info info, List<CharacterDto> results});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$CharacterPageDtoCopyWithImpl<$Res, $Val extends CharacterPageDto>
    implements $CharacterPageDtoCopyWith<$Res> {
  _$CharacterPageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterPageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDto>,
    ) as $Val);
  }

  /// Create a copy of CharacterPageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get info {
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterPageDtoImplCopyWith<$Res>
    implements $CharacterPageDtoCopyWith<$Res> {
  factory _$$CharacterPageDtoImplCopyWith(_$CharacterPageDtoImpl value,
          $Res Function(_$CharacterPageDtoImpl) then) =
      __$$CharacterPageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Info info, List<CharacterDto> results});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$CharacterPageDtoImplCopyWithImpl<$Res>
    extends _$CharacterPageDtoCopyWithImpl<$Res, _$CharacterPageDtoImpl>
    implements _$$CharacterPageDtoImplCopyWith<$Res> {
  __$$CharacterPageDtoImplCopyWithImpl(_$CharacterPageDtoImpl _value,
      $Res Function(_$CharacterPageDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterPageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$CharacterPageDtoImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterPageDtoImpl implements _CharacterPageDto {
  const _$CharacterPageDtoImpl(
      {required this.info, required final List<CharacterDto> results})
      : _results = results;

  factory _$CharacterPageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterPageDtoImplFromJson(json);

  @override
  final Info info;
  final List<CharacterDto> _results;
  @override
  List<CharacterDto> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CharacterPageDto(info: $info, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterPageDtoImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  /// Create a copy of CharacterPageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterPageDtoImplCopyWith<_$CharacterPageDtoImpl> get copyWith =>
      __$$CharacterPageDtoImplCopyWithImpl<_$CharacterPageDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterPageDtoImplToJson(
      this,
    );
  }
}

abstract class _CharacterPageDto implements CharacterPageDto {
  const factory _CharacterPageDto(
      {required final Info info,
      required final List<CharacterDto> results}) = _$CharacterPageDtoImpl;

  factory _CharacterPageDto.fromJson(Map<String, dynamic> json) =
      _$CharacterPageDtoImpl.fromJson;

  @override
  Info get info;
  @override
  List<CharacterDto> get results;

  /// Create a copy of CharacterPageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterPageDtoImplCopyWith<_$CharacterPageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  int get count => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get prev => throw _privateConstructorUsedError;

  /// Serializes this Info to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res, Info>;
  @useResult
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res, $Val extends Info>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoImplCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$$InfoImplCopyWith(
          _$InfoImpl value, $Res Function(_$InfoImpl) then) =
      __$$InfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int pages, String? next, String? prev});
}

/// @nodoc
class __$$InfoImplCopyWithImpl<$Res>
    extends _$InfoCopyWithImpl<$Res, _$InfoImpl>
    implements _$$InfoImplCopyWith<$Res> {
  __$$InfoImplCopyWithImpl(_$InfoImpl _value, $Res Function(_$InfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? pages = null,
    Object? next = freezed,
    Object? prev = freezed,
  }) {
    return _then(_$InfoImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {required this.count, required this.pages, this.next, this.prev});

  factory _$InfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoImplFromJson(json);

  @override
  final int count;
  @override
  final int pages;
  @override
  final String? next;
  @override
  final String? prev;

  @override
  String toString() {
    return 'Info(count: $count, pages: $pages, next: $next, prev: $prev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.prev, prev) || other.prev == prev));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages, next, prev);

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      __$$InfoImplCopyWithImpl<_$InfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoImplToJson(
      this,
    );
  }
}

abstract class _Info implements Info {
  const factory _Info(
      {required final int count,
      required final int pages,
      final String? next,
      final String? prev}) = _$InfoImpl;

  factory _Info.fromJson(Map<String, dynamic> json) = _$InfoImpl.fromJson;

  @override
  int get count;
  @override
  int get pages;
  @override
  String? get next;
  @override
  String? get prev;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterDto _$CharacterDtoFromJson(Map<String, dynamic> json) {
  return _CharacterDto.fromJson(json);
}

/// @nodoc
mixin _$CharacterDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;

  /// Serializes this CharacterDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterDtoCopyWith<CharacterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDtoCopyWith<$Res> {
  factory $CharacterDtoCopyWith(
          CharacterDto value, $Res Function(CharacterDto) then) =
      _$CharacterDtoCopyWithImpl<$Res, CharacterDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String image,
      String created});
}

/// @nodoc
class _$CharacterDtoCopyWithImpl<$Res, $Val extends CharacterDto>
    implements $CharacterDtoCopyWith<$Res> {
  _$CharacterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterDto
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
    Object? created = null,
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
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDtoImplCopyWith<$Res>
    implements $CharacterDtoCopyWith<$Res> {
  factory _$$CharacterDtoImplCopyWith(
          _$CharacterDtoImpl value, $Res Function(_$CharacterDtoImpl) then) =
      __$$CharacterDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String gender,
      String image,
      String created});
}

/// @nodoc
class __$$CharacterDtoImplCopyWithImpl<$Res>
    extends _$CharacterDtoCopyWithImpl<$Res, _$CharacterDtoImpl>
    implements _$$CharacterDtoImplCopyWith<$Res> {
  __$$CharacterDtoImplCopyWithImpl(
      _$CharacterDtoImpl _value, $Res Function(_$CharacterDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterDto
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
    Object? created = null,
  }) {
    return _then(_$CharacterDtoImpl(
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
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterDtoImpl implements _CharacterDto {
  const _$CharacterDtoImpl(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.gender,
      required this.image,
      required this.created});

  factory _$CharacterDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String species;
  @override
  final String gender;
  @override
  final String image;
  @override
  final String created;

  @override
  String toString() {
    return 'CharacterDto(id: $id, name: $name, status: $status, species: $species, gender: $gender, image: $image, created: $created)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.created, created) || other.created == created));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, status, species, gender, image, created);

  /// Create a copy of CharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDtoImplCopyWith<_$CharacterDtoImpl> get copyWith =>
      __$$CharacterDtoImplCopyWithImpl<_$CharacterDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDtoImplToJson(
      this,
    );
  }
}

abstract class _CharacterDto implements CharacterDto {
  const factory _CharacterDto(
      {required final int id,
      required final String name,
      required final String status,
      required final String species,
      required final String gender,
      required final String image,
      required final String created}) = _$CharacterDtoImpl;

  factory _CharacterDto.fromJson(Map<String, dynamic> json) =
      _$CharacterDtoImpl.fromJson;

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
  @override
  String get created;

  /// Create a copy of CharacterDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterDtoImplCopyWith<_$CharacterDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
