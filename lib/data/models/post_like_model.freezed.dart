// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_like_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostLikeModel _$PostLikeModelFromJson(Map<String, dynamic> json) {
  return _PostLikeModel.fromJson(json);
}

/// @nodoc
mixin _$PostLikeModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PostLikeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostLikeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostLikeModelCopyWith<PostLikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostLikeModelCopyWith<$Res> {
  factory $PostLikeModelCopyWith(
    PostLikeModel value,
    $Res Function(PostLikeModel) then,
  ) = _$PostLikeModelCopyWithImpl<$Res, PostLikeModel>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'created_at') String createdAt,
  });
}

/// @nodoc
class _$PostLikeModelCopyWithImpl<$Res, $Val extends PostLikeModel>
    implements $PostLikeModelCopyWith<$Res> {
  _$PostLikeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostLikeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostLikeModelImplCopyWith<$Res>
    implements $PostLikeModelCopyWith<$Res> {
  factory _$$PostLikeModelImplCopyWith(
    _$PostLikeModelImpl value,
    $Res Function(_$PostLikeModelImpl) then,
  ) = __$$PostLikeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'created_at') String createdAt,
  });
}

/// @nodoc
class __$$PostLikeModelImplCopyWithImpl<$Res>
    extends _$PostLikeModelCopyWithImpl<$Res, _$PostLikeModelImpl>
    implements _$$PostLikeModelImplCopyWith<$Res> {
  __$$PostLikeModelImplCopyWithImpl(
    _$PostLikeModelImpl _value,
    $Res Function(_$PostLikeModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostLikeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$PostLikeModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostLikeModelImpl extends _PostLikeModel {
  const _$PostLikeModelImpl({
    required this.id,
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'created_at') required this.createdAt,
  }) : super._();

  factory _$PostLikeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostLikeModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'PostLikeModel(id: $id, userId: $userId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostLikeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, createdAt);

  /// Create a copy of PostLikeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostLikeModelImplCopyWith<_$PostLikeModelImpl> get copyWith =>
      __$$PostLikeModelImplCopyWithImpl<_$PostLikeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostLikeModelImplToJson(this);
  }
}

abstract class _PostLikeModel extends PostLikeModel {
  const factory _PostLikeModel({
    required final String id,
    @JsonKey(name: 'user_id') required final String userId,
    @JsonKey(name: 'created_at') required final String createdAt,
  }) = _$PostLikeModelImpl;
  const _PostLikeModel._() : super._();

  factory _PostLikeModel.fromJson(Map<String, dynamic> json) =
      _$PostLikeModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;

  /// Create a copy of PostLikeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostLikeModelImplCopyWith<_$PostLikeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
