// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PostImage {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostImageCopyWith<PostImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostImageCopyWith<$Res> {
  factory $PostImageCopyWith(PostImage value, $Res Function(PostImage) then) =
      _$PostImageCopyWithImpl<$Res, PostImage>;
  @useResult
  $Res call({String id, String imageUrl});
}

/// @nodoc
class _$PostImageCopyWithImpl<$Res, $Val extends PostImage>
    implements $PostImageCopyWith<$Res> {
  _$PostImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostImage
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
abstract class _$$PostImageImplCopyWith<$Res>
    implements $PostImageCopyWith<$Res> {
  factory _$$PostImageImplCopyWith(
    _$PostImageImpl value,
    $Res Function(_$PostImageImpl) then,
  ) = __$$PostImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String imageUrl});
}

/// @nodoc
class __$$PostImageImplCopyWithImpl<$Res>
    extends _$PostImageCopyWithImpl<$Res, _$PostImageImpl>
    implements _$$PostImageImplCopyWith<$Res> {
  __$$PostImageImplCopyWithImpl(
    _$PostImageImpl _value,
    $Res Function(_$PostImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? imageUrl = null}) {
    return _then(
      _$PostImageImpl(
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

class _$PostImageImpl extends _PostImage {
  const _$PostImageImpl({required this.id, required this.imageUrl}) : super._();

  @override
  final String id;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'PostImage(id: $id, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl);

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImageImplCopyWith<_$PostImageImpl> get copyWith =>
      __$$PostImageImplCopyWithImpl<_$PostImageImpl>(this, _$identity);
}

abstract class _PostImage extends PostImage {
  const factory _PostImage({
    required final String id,
    required final String imageUrl,
  }) = _$PostImageImpl;
  const _PostImage._() : super._();

  @override
  String get id;
  @override
  String get imageUrl;

  /// Create a copy of PostImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImageImplCopyWith<_$PostImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
