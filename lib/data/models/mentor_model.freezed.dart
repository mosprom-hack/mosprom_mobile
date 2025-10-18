// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MentorModel _$MentorModelFromJson(Map<String, dynamic> json) {
  return _MentorModel.fromJson(json);
}

/// @nodoc
mixin _$MentorModel {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get specialization => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;

  /// Serializes this MentorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MentorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentorModelCopyWith<MentorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorModelCopyWith<$Res> {
  factory $MentorModelCopyWith(
    MentorModel value,
    $Res Function(MentorModel) then,
  ) = _$MentorModelCopyWithImpl<$Res, MentorModel>;
  @useResult
  $Res call({
    String id,
    String firstName,
    String lastName,
    String? avatarUrl,
    String? specialization,
    String? bio,
  });
}

/// @nodoc
class _$MentorModelCopyWithImpl<$Res, $Val extends MentorModel>
    implements $MentorModelCopyWith<$Res> {
  _$MentorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatarUrl = freezed,
    Object? specialization = freezed,
    Object? bio = freezed,
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
            avatarUrl: freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            specialization: freezed == specialization
                ? _value.specialization
                : specialization // ignore: cast_nullable_to_non_nullable
                      as String?,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MentorModelImplCopyWith<$Res>
    implements $MentorModelCopyWith<$Res> {
  factory _$$MentorModelImplCopyWith(
    _$MentorModelImpl value,
    $Res Function(_$MentorModelImpl) then,
  ) = __$$MentorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String firstName,
    String lastName,
    String? avatarUrl,
    String? specialization,
    String? bio,
  });
}

/// @nodoc
class __$$MentorModelImplCopyWithImpl<$Res>
    extends _$MentorModelCopyWithImpl<$Res, _$MentorModelImpl>
    implements _$$MentorModelImplCopyWith<$Res> {
  __$$MentorModelImplCopyWithImpl(
    _$MentorModelImpl _value,
    $Res Function(_$MentorModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MentorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatarUrl = freezed,
    Object? specialization = freezed,
    Object? bio = freezed,
  }) {
    return _then(
      _$MentorModelImpl(
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
        avatarUrl: freezed == avatarUrl
            ? _value.avatarUrl
            : avatarUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        specialization: freezed == specialization
            ? _value.specialization
            : specialization // ignore: cast_nullable_to_non_nullable
                  as String?,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorModelImpl extends _MentorModel {
  const _$MentorModelImpl({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.avatarUrl,
    this.specialization,
    this.bio,
  }) : super._();

  factory _$MentorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorModelImplFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? avatarUrl;
  @override
  final String? specialization;
  @override
  final String? bio;

  @override
  String toString() {
    return 'MentorModel(id: $id, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, specialization: $specialization, bio: $bio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    firstName,
    lastName,
    avatarUrl,
    specialization,
    bio,
  );

  /// Create a copy of MentorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorModelImplCopyWith<_$MentorModelImpl> get copyWith =>
      __$$MentorModelImplCopyWithImpl<_$MentorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorModelImplToJson(this);
  }
}

abstract class _MentorModel extends MentorModel {
  const factory _MentorModel({
    required final String id,
    required final String firstName,
    required final String lastName,
    final String? avatarUrl,
    final String? specialization,
    final String? bio,
  }) = _$MentorModelImpl;
  const _MentorModel._() : super._();

  factory _MentorModel.fromJson(Map<String, dynamic> json) =
      _$MentorModelImpl.fromJson;

  @override
  String get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get avatarUrl;
  @override
  String? get specialization;
  @override
  String? get bio;

  /// Create a copy of MentorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentorModelImplCopyWith<_$MentorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
