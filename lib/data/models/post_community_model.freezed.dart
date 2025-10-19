// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_community_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostCommunityModel _$PostCommunityModelFromJson(Map<String, dynamic> json) {
  return _PostCommunityModel.fromJson(json);
}

/// @nodoc
mixin _$PostCommunityModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;

  /// Serializes this PostCommunityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostCommunityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCommunityModelCopyWith<PostCommunityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommunityModelCopyWith<$Res> {
  factory $PostCommunityModelCopyWith(
    PostCommunityModel value,
    $Res Function(PostCommunityModel) then,
  ) = _$PostCommunityModelCopyWithImpl<$Res, PostCommunityModel>;
  @useResult
  $Res call({
    String id,
    String title,
    @JsonKey(name: 'photo_url') String? photoUrl,
  });
}

/// @nodoc
class _$PostCommunityModelCopyWithImpl<$Res, $Val extends PostCommunityModel>
    implements $PostCommunityModelCopyWith<$Res> {
  _$PostCommunityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCommunityModel
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
abstract class _$$PostCommunityModelImplCopyWith<$Res>
    implements $PostCommunityModelCopyWith<$Res> {
  factory _$$PostCommunityModelImplCopyWith(
    _$PostCommunityModelImpl value,
    $Res Function(_$PostCommunityModelImpl) then,
  ) = __$$PostCommunityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    @JsonKey(name: 'photo_url') String? photoUrl,
  });
}

/// @nodoc
class __$$PostCommunityModelImplCopyWithImpl<$Res>
    extends _$PostCommunityModelCopyWithImpl<$Res, _$PostCommunityModelImpl>
    implements _$$PostCommunityModelImplCopyWith<$Res> {
  __$$PostCommunityModelImplCopyWithImpl(
    _$PostCommunityModelImpl _value,
    $Res Function(_$PostCommunityModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostCommunityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? photoUrl = freezed,
  }) {
    return _then(
      _$PostCommunityModelImpl(
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
@JsonSerializable()
class _$PostCommunityModelImpl extends _PostCommunityModel {
  const _$PostCommunityModelImpl({
    required this.id,
    required this.title,
    @JsonKey(name: 'photo_url') this.photoUrl,
  }) : super._();

  factory _$PostCommunityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCommunityModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;

  @override
  String toString() {
    return 'PostCommunityModel(id: $id, title: $title, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommunityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, photoUrl);

  /// Create a copy of PostCommunityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommunityModelImplCopyWith<_$PostCommunityModelImpl> get copyWith =>
      __$$PostCommunityModelImplCopyWithImpl<_$PostCommunityModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCommunityModelImplToJson(this);
  }
}

abstract class _PostCommunityModel extends PostCommunityModel {
  const factory _PostCommunityModel({
    required final String id,
    required final String title,
    @JsonKey(name: 'photo_url') final String? photoUrl,
  }) = _$PostCommunityModelImpl;
  const _PostCommunityModel._() : super._();

  factory _PostCommunityModel.fromJson(Map<String, dynamic> json) =
      _$PostCommunityModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;

  /// Create a copy of PostCommunityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCommunityModelImplCopyWith<_$PostCommunityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
