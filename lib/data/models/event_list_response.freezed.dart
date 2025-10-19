// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EventListResponse _$EventListResponseFromJson(Map<String, dynamic> json) {
  return _EventListResponse.fromJson(json);
}

/// @nodoc
mixin _$EventListResponse {
  bool get success => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<EventModel> get data => throw _privateConstructorUsedError;

  /// Serializes this EventListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventListResponseCopyWith<EventListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventListResponseCopyWith<$Res> {
  factory $EventListResponseCopyWith(
    EventListResponse value,
    $Res Function(EventListResponse) then,
  ) = _$EventListResponseCopyWithImpl<$Res, EventListResponse>;
  @useResult
  $Res call({bool success, int count, List<EventModel> data});
}

/// @nodoc
class _$EventListResponseCopyWithImpl<$Res, $Val extends EventListResponse>
    implements $EventListResponseCopyWith<$Res> {
  _$EventListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventListResponse
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
                      as List<EventModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EventListResponseImplCopyWith<$Res>
    implements $EventListResponseCopyWith<$Res> {
  factory _$$EventListResponseImplCopyWith(
    _$EventListResponseImpl value,
    $Res Function(_$EventListResponseImpl) then,
  ) = __$$EventListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int count, List<EventModel> data});
}

/// @nodoc
class __$$EventListResponseImplCopyWithImpl<$Res>
    extends _$EventListResponseCopyWithImpl<$Res, _$EventListResponseImpl>
    implements _$$EventListResponseImplCopyWith<$Res> {
  __$$EventListResponseImplCopyWithImpl(
    _$EventListResponseImpl _value,
    $Res Function(_$EventListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? count = null,
    Object? data = null,
  }) {
    return _then(
      _$EventListResponseImpl(
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
                  as List<EventModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EventListResponseImpl implements _EventListResponse {
  const _$EventListResponseImpl({
    required this.success,
    required this.count,
    required final List<EventModel> data,
  }) : _data = data;

  factory _$EventListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventListResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final int count;
  final List<EventModel> _data;
  @override
  List<EventModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'EventListResponse(success: $success, count: $count, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventListResponseImpl &&
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

  /// Create a copy of EventListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventListResponseImplCopyWith<_$EventListResponseImpl> get copyWith =>
      __$$EventListResponseImplCopyWithImpl<_$EventListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$EventListResponseImplToJson(this);
  }
}

abstract class _EventListResponse implements EventListResponse {
  const factory _EventListResponse({
    required final bool success,
    required final int count,
    required final List<EventModel> data,
  }) = _$EventListResponseImpl;

  factory _EventListResponse.fromJson(Map<String, dynamic> json) =
      _$EventListResponseImpl.fromJson;

  @override
  bool get success;
  @override
  int get count;
  @override
  List<EventModel> get data;

  /// Create a copy of EventListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventListResponseImplCopyWith<_$EventListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
