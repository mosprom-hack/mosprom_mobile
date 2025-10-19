// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostImageModel _$PostImageModelFromJson(Map<String, dynamic> json) {
  return _PostImageModel.fromJson(json);
}

/// @nodoc
mixin _$PostImageModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this PostImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostImageModelCopyWith<PostImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostImageModelCopyWith<$Res> {
  factory $PostImageModelCopyWith(
    PostImageModel value,
    $Res Function(PostImageModel) then,
  ) = _$PostImageModelCopyWithImpl<$Res, PostImageModel>;
  @useResult
  $Res call({String id, @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class _$PostImageModelCopyWithImpl<$Res, $Val extends PostImageModel>
    implements $PostImageModelCopyWith<$Res> {
  _$PostImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? imageUrl = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostImageModelImplCopyWith<$Res>
    implements $PostImageModelCopyWith<$Res> {
  factory _$$PostImageModelImplCopyWith(
    _$PostImageModelImpl value,
    $Res Function(_$PostImageModelImpl) then,
  ) = __$$PostImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, @JsonKey(name: 'image_url') String imageUrl});
}

/// @nodoc
class __$$PostImageModelImplCopyWithImpl<$Res>
    extends _$PostImageModelCopyWithImpl<$Res, _$PostImageModelImpl>
    implements _$$PostImageModelImplCopyWith<$Res> {
  __$$PostImageModelImplCopyWithImpl(
    _$PostImageModelImpl _value,
    $Res Function(_$PostImageModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? imageUrl = null}) {
    return _then(
      _$PostImageModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImageModelImpl extends _PostImageModel {
  const _$PostImageModelImpl({
    required this.id,
    @JsonKey(name: 'image_url') required this.imageUrl,
  }) : super._();

  factory _$PostImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImageModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;

  @override
  String toString() {
    return 'PostImageModel(id: $id, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl);

  /// Create a copy of PostImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImageModelImplCopyWith<_$PostImageModelImpl> get copyWith =>
      __$$PostImageModelImplCopyWithImpl<_$PostImageModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImageModelImplToJson(this);
  }
}

abstract class _PostImageModel extends PostImageModel {
  const factory _PostImageModel({
    required final String id,
    @JsonKey(name: 'image_url') required final String imageUrl,
  }) = _$PostImageModelImpl;
  const _PostImageModel._() : super._();

  factory _PostImageModel.fromJson(Map<String, dynamic> json) =
      _$PostImageModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;

  /// Create a copy of PostImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImageModelImplCopyWith<_$PostImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
