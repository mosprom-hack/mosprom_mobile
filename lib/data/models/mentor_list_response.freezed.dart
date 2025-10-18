// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentor_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MentorListResponse _$MentorListResponseFromJson(Map<String, dynamic> json) {
  return _MentorListResponse.fromJson(json);
}

/// @nodoc
mixin _$MentorListResponse {
  bool get success => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<MentorPreviewModel> get data => throw _privateConstructorUsedError;

  /// Serializes this MentorListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MentorListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentorListResponseCopyWith<MentorListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorListResponseCopyWith<$Res> {
  factory $MentorListResponseCopyWith(
    MentorListResponse value,
    $Res Function(MentorListResponse) then,
  ) = _$MentorListResponseCopyWithImpl<$Res, MentorListResponse>;
  @useResult
  $Res call({bool success, int count, List<MentorPreviewModel> data});
}

/// @nodoc
class _$MentorListResponseCopyWithImpl<$Res, $Val extends MentorListResponse>
    implements $MentorListResponseCopyWith<$Res> {
  _$MentorListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentorListResponse
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
                      as List<MentorPreviewModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MentorListResponseImplCopyWith<$Res>
    implements $MentorListResponseCopyWith<$Res> {
  factory _$$MentorListResponseImplCopyWith(
    _$MentorListResponseImpl value,
    $Res Function(_$MentorListResponseImpl) then,
  ) = __$$MentorListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int count, List<MentorPreviewModel> data});
}

/// @nodoc
class __$$MentorListResponseImplCopyWithImpl<$Res>
    extends _$MentorListResponseCopyWithImpl<$Res, _$MentorListResponseImpl>
    implements _$$MentorListResponseImplCopyWith<$Res> {
  __$$MentorListResponseImplCopyWithImpl(
    _$MentorListResponseImpl _value,
    $Res Function(_$MentorListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MentorListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? count = null,
    Object? data = null,
  }) {
    return _then(
      _$MentorListResponseImpl(
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
                  as List<MentorPreviewModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorListResponseImpl implements _MentorListResponse {
  const _$MentorListResponseImpl({
    required this.success,
    required this.count,
    required final List<MentorPreviewModel> data,
  }) : _data = data;

  factory _$MentorListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorListResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final int count;
  final List<MentorPreviewModel> _data;
  @override
  List<MentorPreviewModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MentorListResponse(success: $success, count: $count, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorListResponseImpl &&
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

  /// Create a copy of MentorListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorListResponseImplCopyWith<_$MentorListResponseImpl> get copyWith =>
      __$$MentorListResponseImplCopyWithImpl<_$MentorListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorListResponseImplToJson(this);
  }
}

abstract class _MentorListResponse implements MentorListResponse {
  const factory _MentorListResponse({
    required final bool success,
    required final int count,
    required final List<MentorPreviewModel> data,
  }) = _$MentorListResponseImpl;

  factory _MentorListResponse.fromJson(Map<String, dynamic> json) =
      _$MentorListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  int get count;
  @override
  List<MentorPreviewModel> get data;

  /// Create a copy of MentorListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentorListResponseImplCopyWith<_$MentorListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
