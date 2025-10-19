// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PostListResponse _$PostListResponseFromJson(Map<String, dynamic> json) {
  return _PostListResponse.fromJson(json);
}

/// @nodoc
mixin _$PostListResponse {
  bool get success => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<PostModel> get data => throw _privateConstructorUsedError;

  /// Serializes this PostListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostListResponseCopyWith<PostListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListResponseCopyWith<$Res> {
  factory $PostListResponseCopyWith(
    PostListResponse value,
    $Res Function(PostListResponse) then,
  ) = _$PostListResponseCopyWithImpl<$Res, PostListResponse>;
  @useResult
  $Res call({bool success, int count, List<PostModel> data});
}

/// @nodoc
class _$PostListResponseCopyWithImpl<$Res, $Val extends PostListResponse>
    implements $PostListResponseCopyWith<$Res> {
  _$PostListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? count = null,
    Object? data = null,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<PostModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostListResponseImplCopyWith<$Res>
    implements $PostListResponseCopyWith<$Res> {
  factory _$$PostListResponseImplCopyWith(
    _$PostListResponseImpl value,
    $Res Function(_$PostListResponseImpl) then,
  ) = __$$PostListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int count, List<PostModel> data});
}

/// @nodoc
class __$$PostListResponseImplCopyWithImpl<$Res>
    extends _$PostListResponseCopyWithImpl<$Res, _$PostListResponseImpl>
    implements _$$PostListResponseImplCopyWith<$Res> {
  __$$PostListResponseImplCopyWithImpl(
    _$PostListResponseImpl _value,
    $Res Function(_$PostListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? count = null,
    Object? data = null,
  }) {
    return _then(
      _$PostListResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<PostModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostListResponseImpl implements _PostListResponse {
  const _$PostListResponseImpl({
    required this.success,
    required this.count,
    required final List<PostModel> data,
  }) : _data = data;

  factory _$PostListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostListResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final int count;
  final List<PostModel> _data;
  @override
  List<PostModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PostListResponse(success: $success, count: $count, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    count,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of PostListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListResponseImplCopyWith<_$PostListResponseImpl> get copyWith =>
      __$$PostListResponseImplCopyWithImpl<_$PostListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PostListResponseImplToJson(this);
  }
}

abstract class _PostListResponse implements PostListResponse {
  const factory _PostListResponse({
    required final bool success,
    required final int count,
    required final List<PostModel> data,
  }) = _$PostListResponseImpl;

  factory _PostListResponse.fromJson(Map<String, dynamic> json) =
      _$PostListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  int get count;
  @override
  List<PostModel> get data;

  /// Create a copy of PostListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostListResponseImplCopyWith<_$PostListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
