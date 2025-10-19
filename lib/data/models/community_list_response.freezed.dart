// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommunityListResponse _$CommunityListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _CommunityListResponse.fromJson(json);
}

/// @nodoc
mixin _$CommunityListResponse {
  bool get success => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<CommunityModel> get data => throw _privateConstructorUsedError;

  /// Serializes this CommunityListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityListResponseCopyWith<CommunityListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityListResponseCopyWith<$Res> {
  factory $CommunityListResponseCopyWith(
    CommunityListResponse value,
    $Res Function(CommunityListResponse) then,
  ) = _$CommunityListResponseCopyWithImpl<$Res, CommunityListResponse>;
  @useResult
  $Res call({bool success, int count, List<CommunityModel> data});
}

/// @nodoc
class _$CommunityListResponseCopyWithImpl<
  $Res,
  $Val extends CommunityListResponse
>
    implements $CommunityListResponseCopyWith<$Res> {
  _$CommunityListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityListResponse
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
                      as List<CommunityModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommunityListResponseImplCopyWith<$Res>
    implements $CommunityListResponseCopyWith<$Res> {
  factory _$$CommunityListResponseImplCopyWith(
    _$CommunityListResponseImpl value,
    $Res Function(_$CommunityListResponseImpl) then,
  ) = __$$CommunityListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int count, List<CommunityModel> data});
}

/// @nodoc
class __$$CommunityListResponseImplCopyWithImpl<$Res>
    extends
        _$CommunityListResponseCopyWithImpl<$Res, _$CommunityListResponseImpl>
    implements _$$CommunityListResponseImplCopyWith<$Res> {
  __$$CommunityListResponseImplCopyWithImpl(
    _$CommunityListResponseImpl _value,
    $Res Function(_$CommunityListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? count = null,
    Object? data = null,
  }) {
    return _then(
      _$CommunityListResponseImpl(
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
                  as List<CommunityModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityListResponseImpl implements _CommunityListResponse {
  const _$CommunityListResponseImpl({
    required this.success,
    required this.count,
    required final List<CommunityModel> data,
  }) : _data = data;

  factory _$CommunityListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityListResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final int count;
  final List<CommunityModel> _data;
  @override
  List<CommunityModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommunityListResponse(success: $success, count: $count, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityListResponseImpl &&
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

  /// Create a copy of CommunityListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityListResponseImplCopyWith<_$CommunityListResponseImpl>
  get copyWith =>
      __$$CommunityListResponseImplCopyWithImpl<_$CommunityListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityListResponseImplToJson(this);
  }
}

abstract class _CommunityListResponse implements CommunityListResponse {
  const factory _CommunityListResponse({
    required final bool success,
    required final int count,
    required final List<CommunityModel> data,
  }) = _$CommunityListResponseImpl;

  factory _CommunityListResponse.fromJson(Map<String, dynamic> json) =
      _$CommunityListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  int get count;
  @override
  List<CommunityModel> get data;

  /// Create a copy of CommunityListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityListResponseImplCopyWith<_$CommunityListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
