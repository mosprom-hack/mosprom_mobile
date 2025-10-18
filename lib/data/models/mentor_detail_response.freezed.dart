// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentor_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MentorDetailResponse _$MentorDetailResponseFromJson(Map<String, dynamic> json) {
  return _MentorDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$MentorDetailResponse {
  bool get success => throw _privateConstructorUsedError;
  MentorDetailModel get data => throw _privateConstructorUsedError;

  /// Serializes this MentorDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MentorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentorDetailResponseCopyWith<MentorDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorDetailResponseCopyWith<$Res> {
  factory $MentorDetailResponseCopyWith(
    MentorDetailResponse value,
    $Res Function(MentorDetailResponse) then,
  ) = _$MentorDetailResponseCopyWithImpl<$Res, MentorDetailResponse>;
  @useResult
  $Res call({bool success, MentorDetailModel data});

  $MentorDetailModelCopyWith<$Res> get data;
}

/// @nodoc
class _$MentorDetailResponseCopyWithImpl<
  $Res,
  $Val extends MentorDetailResponse
>
    implements $MentorDetailResponseCopyWith<$Res> {
  _$MentorDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as MentorDetailModel,
          )
          as $Val,
    );
  }

  /// Create a copy of MentorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MentorDetailModelCopyWith<$Res> get data {
    return $MentorDetailModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MentorDetailResponseImplCopyWith<$Res>
    implements $MentorDetailResponseCopyWith<$Res> {
  factory _$$MentorDetailResponseImplCopyWith(
    _$MentorDetailResponseImpl value,
    $Res Function(_$MentorDetailResponseImpl) then,
  ) = __$$MentorDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, MentorDetailModel data});

  @override
  $MentorDetailModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$MentorDetailResponseImplCopyWithImpl<$Res>
    extends _$MentorDetailResponseCopyWithImpl<$Res, _$MentorDetailResponseImpl>
    implements _$$MentorDetailResponseImplCopyWith<$Res> {
  __$$MentorDetailResponseImplCopyWithImpl(
    _$MentorDetailResponseImpl _value,
    $Res Function(_$MentorDetailResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MentorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$MentorDetailResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: null == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as MentorDetailModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorDetailResponseImpl implements _MentorDetailResponse {
  const _$MentorDetailResponseImpl({required this.success, required this.data});

  factory _$MentorDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorDetailResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final MentorDetailModel data;

  @override
  String toString() {
    return 'MentorDetailResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorDetailResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  /// Create a copy of MentorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorDetailResponseImplCopyWith<_$MentorDetailResponseImpl>
  get copyWith =>
      __$$MentorDetailResponseImplCopyWithImpl<_$MentorDetailResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorDetailResponseImplToJson(this);
  }
}

abstract class _MentorDetailResponse implements MentorDetailResponse {
  const factory _MentorDetailResponse({
    required final bool success,
    required final MentorDetailModel data,
  }) = _$MentorDetailResponseImpl;

  factory _MentorDetailResponse.fromJson(Map<String, dynamic> json) =
      _$MentorDetailResponseImpl.fromJson;

  @override
  bool get success;
  @override
  MentorDetailModel get data;

  /// Create a copy of MentorDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentorDetailResponseImplCopyWith<_$MentorDetailResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
