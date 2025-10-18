// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Mentor {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get specialization => throw _privateConstructorUsedError;
  String? get aboutMe => throw _privateConstructorUsedError;
  String? get helpWith => throw _privateConstructorUsedError;
  String? get experience => throw _privateConstructorUsedError;

  /// Create a copy of Mentor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentorCopyWith<Mentor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorCopyWith<$Res> {
  factory $MentorCopyWith(Mentor value, $Res Function(Mentor) then) =
      _$MentorCopyWithImpl<$Res, Mentor>;
  @useResult
  $Res call({
    String id,
    String firstName,
    String lastName,
    String? avatarUrl,
    String? specialization,
    String? aboutMe,
    String? helpWith,
    String? experience,
  });
}

/// @nodoc
class _$MentorCopyWithImpl<$Res, $Val extends Mentor>
    implements $MentorCopyWith<$Res> {
  _$MentorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Mentor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatarUrl = freezed,
    Object? specialization = freezed,
    Object? aboutMe = freezed,
    Object? helpWith = freezed,
    Object? experience = freezed,
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
            aboutMe: freezed == aboutMe
                ? _value.aboutMe
                : aboutMe // ignore: cast_nullable_to_non_nullable
                      as String?,
            helpWith: freezed == helpWith
                ? _value.helpWith
                : helpWith // ignore: cast_nullable_to_non_nullable
                      as String?,
            experience: freezed == experience
                ? _value.experience
                : experience // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MentorImplCopyWith<$Res> implements $MentorCopyWith<$Res> {
  factory _$$MentorImplCopyWith(
    _$MentorImpl value,
    $Res Function(_$MentorImpl) then,
  ) = __$$MentorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String firstName,
    String lastName,
    String? avatarUrl,
    String? specialization,
    String? aboutMe,
    String? helpWith,
    String? experience,
  });
}

/// @nodoc
class __$$MentorImplCopyWithImpl<$Res>
    extends _$MentorCopyWithImpl<$Res, _$MentorImpl>
    implements _$$MentorImplCopyWith<$Res> {
  __$$MentorImplCopyWithImpl(
    _$MentorImpl _value,
    $Res Function(_$MentorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Mentor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? avatarUrl = freezed,
    Object? specialization = freezed,
    Object? aboutMe = freezed,
    Object? helpWith = freezed,
    Object? experience = freezed,
  }) {
    return _then(
      _$MentorImpl(
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
        aboutMe: freezed == aboutMe
            ? _value.aboutMe
            : aboutMe // ignore: cast_nullable_to_non_nullable
                  as String?,
        helpWith: freezed == helpWith
            ? _value.helpWith
            : helpWith // ignore: cast_nullable_to_non_nullable
                  as String?,
        experience: freezed == experience
            ? _value.experience
            : experience // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$MentorImpl extends _Mentor {
  const _$MentorImpl({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.avatarUrl,
    this.specialization,
    this.aboutMe,
    this.helpWith,
    this.experience,
  }) : super._();

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
  final String? aboutMe;
  @override
  final String? helpWith;
  @override
  final String? experience;

  @override
  String toString() {
    return 'Mentor(id: $id, firstName: $firstName, lastName: $lastName, avatarUrl: $avatarUrl, specialization: $specialization, aboutMe: $aboutMe, helpWith: $helpWith, experience: $experience)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.helpWith, helpWith) ||
                other.helpWith == helpWith) &&
            (identical(other.experience, experience) ||
                other.experience == experience));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    firstName,
    lastName,
    avatarUrl,
    specialization,
    aboutMe,
    helpWith,
    experience,
  );

  /// Create a copy of Mentor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorImplCopyWith<_$MentorImpl> get copyWith =>
      __$$MentorImplCopyWithImpl<_$MentorImpl>(this, _$identity);
}

abstract class _Mentor extends Mentor {
  const factory _Mentor({
    required final String id,
    required final String firstName,
    required final String lastName,
    final String? avatarUrl,
    final String? specialization,
    final String? aboutMe,
    final String? helpWith,
    final String? experience,
  }) = _$MentorImpl;
  const _Mentor._() : super._();

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
  String? get aboutMe;
  @override
  String? get helpWith;
  @override
  String? get experience;

  /// Create a copy of Mentor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentorImplCopyWith<_$MentorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
