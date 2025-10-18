// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentor_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MentorPreviewModel _$MentorPreviewModelFromJson(Map<String, dynamic> json) {
  return _MentorPreviewModel.fromJson(json);
}

/// @nodoc
mixin _$MentorPreviewModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;

  /// Serializes this MentorPreviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MentorPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentorPreviewModelCopyWith<MentorPreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorPreviewModelCopyWith<$Res> {
  factory $MentorPreviewModelCopyWith(
    MentorPreviewModel value,
    $Res Function(MentorPreviewModel) then,
  ) = _$MentorPreviewModelCopyWithImpl<$Res, MentorPreviewModel>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'photo_url') String? photoUrl,
  });
}

/// @nodoc
class _$MentorPreviewModelCopyWithImpl<$Res, $Val extends MentorPreviewModel>
    implements $MentorPreviewModelCopyWith<$Res> {
  _$MentorPreviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentorPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? photoUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MentorPreviewModelImplCopyWith<$Res>
    implements $MentorPreviewModelCopyWith<$Res> {
  factory _$$MentorPreviewModelImplCopyWith(
    _$MentorPreviewModelImpl value,
    $Res Function(_$MentorPreviewModelImpl) then,
  ) = __$$MentorPreviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'photo_url') String? photoUrl,
  });
}

/// @nodoc
class __$$MentorPreviewModelImplCopyWithImpl<$Res>
    extends _$MentorPreviewModelCopyWithImpl<$Res, _$MentorPreviewModelImpl>
    implements _$$MentorPreviewModelImplCopyWith<$Res> {
  __$$MentorPreviewModelImplCopyWithImpl(
    _$MentorPreviewModelImpl _value,
    $Res Function(_$MentorPreviewModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MentorPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? photoUrl = freezed,
  }) {
    return _then(
      _$MentorPreviewModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
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
class _$MentorPreviewModelImpl implements _MentorPreviewModel {
  const _$MentorPreviewModelImpl({
    required this.id,
    @JsonKey(name: 'first_name') required this.firstName,
    @JsonKey(name: 'last_name') required this.lastName,
    @JsonKey(name: 'photo_url') this.photoUrl,
  });

  factory _$MentorPreviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorPreviewModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;

  @override
  String toString() {
    return 'MentorPreviewModel(id: $id, firstName: $firstName, lastName: $lastName, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorPreviewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, firstName, lastName, photoUrl);

  /// Create a copy of MentorPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorPreviewModelImplCopyWith<_$MentorPreviewModelImpl> get copyWith =>
      __$$MentorPreviewModelImplCopyWithImpl<_$MentorPreviewModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorPreviewModelImplToJson(this);
  }
}

abstract class _MentorPreviewModel implements MentorPreviewModel {
  const factory _MentorPreviewModel({
    required final String id,
    @JsonKey(name: 'first_name') required final String firstName,
    @JsonKey(name: 'last_name') required final String lastName,
    @JsonKey(name: 'photo_url') final String? photoUrl,
  }) = _$MentorPreviewModelImpl;

  factory _MentorPreviewModel.fromJson(Map<String, dynamic> json) =
      _$MentorPreviewModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;

  /// Create a copy of MentorPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentorPreviewModelImplCopyWith<_$MentorPreviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
