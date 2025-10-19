// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_like.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PostLike {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of PostLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostLikeCopyWith<PostLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostLikeCopyWith<$Res> {
  factory $PostLikeCopyWith(PostLike value, $Res Function(PostLike) then) =
      _$PostLikeCopyWithImpl<$Res, PostLike>;
  @useResult
  $Res call({String id, String userId, DateTime createdAt});
}

/// @nodoc
class _$PostLikeCopyWithImpl<$Res, $Val extends PostLike>
    implements $PostLikeCopyWith<$Res> {
  _$PostLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostLike
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
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostLikeImplCopyWith<$Res>
    implements $PostLikeCopyWith<$Res> {
  factory _$$PostLikeImplCopyWith(
    _$PostLikeImpl value,
    $Res Function(_$PostLikeImpl) then,
  ) = __$$PostLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userId, DateTime createdAt});
}

/// @nodoc
class __$$PostLikeImplCopyWithImpl<$Res>
    extends _$PostLikeCopyWithImpl<$Res, _$PostLikeImpl>
    implements _$$PostLikeImplCopyWith<$Res> {
  __$$PostLikeImplCopyWithImpl(
    _$PostLikeImpl _value,
    $Res Function(_$PostLikeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$PostLikeImpl(
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
                  as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$PostLikeImpl extends _PostLike {
  const _$PostLikeImpl({
    required this.id,
    required this.userId,
    required this.createdAt,
  }) : super._();

  @override
  final String id;
  @override
  final String userId;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PostLike(id: $id, userId: $userId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostLikeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, createdAt);

  /// Create a copy of PostLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostLikeImplCopyWith<_$PostLikeImpl> get copyWith =>
      __$$PostLikeImplCopyWithImpl<_$PostLikeImpl>(this, _$identity);
}

abstract class _PostLike extends PostLike {
  const factory _PostLike({
    required final String id,
    required final String userId,
    required final DateTime createdAt,
  }) = _$PostLikeImpl;
  const _PostLike._() : super._();

  @override
  String get id;
  @override
  String get userId;
  @override
  DateTime get createdAt;

  /// Create a copy of PostLike
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostLikeImplCopyWith<_$PostLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
