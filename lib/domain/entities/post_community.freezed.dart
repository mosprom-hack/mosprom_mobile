// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_community.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PostCommunity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  /// Create a copy of PostCommunity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCommunityCopyWith<PostCommunity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommunityCopyWith<$Res> {
  factory $PostCommunityCopyWith(
    PostCommunity value,
    $Res Function(PostCommunity) then,
  ) = _$PostCommunityCopyWithImpl<$Res, PostCommunity>;
  @useResult
  $Res call({String id, String title, String? photoUrl});
}

/// @nodoc
class _$PostCommunityCopyWithImpl<$Res, $Val extends PostCommunity>
    implements $PostCommunityCopyWith<$Res> {
  _$PostCommunityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCommunity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? photoUrl = freezed,
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
            photoUrl: freezed == photoUrl
                ? _value.photoUrl
                : photoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostCommunityImplCopyWith<$Res>
    implements $PostCommunityCopyWith<$Res> {
  factory _$$PostCommunityImplCopyWith(
    _$PostCommunityImpl value,
    $Res Function(_$PostCommunityImpl) then,
  ) = __$$PostCommunityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String? photoUrl});
}

/// @nodoc
class __$$PostCommunityImplCopyWithImpl<$Res>
    extends _$PostCommunityCopyWithImpl<$Res, _$PostCommunityImpl>
    implements _$$PostCommunityImplCopyWith<$Res> {
  __$$PostCommunityImplCopyWithImpl(
    _$PostCommunityImpl _value,
    $Res Function(_$PostCommunityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostCommunity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? photoUrl = freezed,
  }) {
    return _then(
      _$PostCommunityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        photoUrl: freezed == photoUrl
            ? _value.photoUrl
            : photoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$PostCommunityImpl extends _PostCommunity {
  const _$PostCommunityImpl({
    required this.id,
    required this.title,
    this.photoUrl,
  }) : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'PostCommunity(id: $id, title: $title, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommunityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, photoUrl);

  /// Create a copy of PostCommunity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommunityImplCopyWith<_$PostCommunityImpl> get copyWith =>
      __$$PostCommunityImplCopyWithImpl<_$PostCommunityImpl>(this, _$identity);
}

abstract class _PostCommunity extends PostCommunity {
  const factory _PostCommunity({
    required final String id,
    required final String title,
    final String? photoUrl,
  }) = _$PostCommunityImpl;
  const _PostCommunity._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  String? get photoUrl;

  /// Create a copy of PostCommunity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCommunityImplCopyWith<_$PostCommunityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
