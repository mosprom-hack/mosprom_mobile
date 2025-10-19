// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommunityModel _$CommunityModelFromJson(Map<String, dynamic> json) {
  return _CommunityModel.fromJson(json);
}

/// @nodoc
mixin _$CommunityModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CommunityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityModelCopyWith<CommunityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityModelCopyWith<$Res> {
  factory $CommunityModelCopyWith(
    CommunityModel value,
    $Res Function(CommunityModel) then,
  ) = _$CommunityModelCopyWithImpl<$Res, CommunityModel>;
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String type,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'created_at') String? createdAt,
  });
}

/// @nodoc
class _$CommunityModelCopyWithImpl<$Res, $Val extends CommunityModel>
    implements $CommunityModelCopyWith<$Res> {
  _$CommunityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? photoUrl = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            photoUrl: freezed == photoUrl
                ? _value.photoUrl
                : photoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommunityModelImplCopyWith<$Res>
    implements $CommunityModelCopyWith<$Res> {
  factory _$$CommunityModelImplCopyWith(
    _$CommunityModelImpl value,
    $Res Function(_$CommunityModelImpl) then,
  ) = __$$CommunityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String description,
    String type,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'created_at') String? createdAt,
  });
}

/// @nodoc
class __$$CommunityModelImplCopyWithImpl<$Res>
    extends _$CommunityModelCopyWithImpl<$Res, _$CommunityModelImpl>
    implements _$$CommunityModelImplCopyWith<$Res> {
  __$$CommunityModelImplCopyWithImpl(
    _$CommunityModelImpl _value,
    $Res Function(_$CommunityModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? photoUrl = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$CommunityModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        photoUrl: freezed == photoUrl
            ? _value.photoUrl
            : photoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityModelImpl extends _CommunityModel {
  const _$CommunityModelImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    @JsonKey(name: 'photo_url') this.photoUrl,
    @JsonKey(name: 'created_at') this.createdAt,
  }) : super._();

  factory _$CommunityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String type;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'CommunityModel(id: $id, title: $title, description: $description, type: $type, photoUrl: $photoUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    description,
    type,
    photoUrl,
    createdAt,
  );

  /// Create a copy of CommunityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityModelImplCopyWith<_$CommunityModelImpl> get copyWith =>
      __$$CommunityModelImplCopyWithImpl<_$CommunityModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityModelImplToJson(this);
  }
}

abstract class _CommunityModel extends CommunityModel {
  const factory _CommunityModel({
    required final String id,
    required final String title,
    required final String description,
    required final String type,
    @JsonKey(name: 'photo_url') final String? photoUrl,
    @JsonKey(name: 'created_at') final String? createdAt,
  }) = _$CommunityModelImpl;
  const _CommunityModel._() : super._();

  factory _CommunityModel.fromJson(Map<String, dynamic> json) =
      _$CommunityModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get type;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;

  /// Create a copy of CommunityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityModelImplCopyWith<_$CommunityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
