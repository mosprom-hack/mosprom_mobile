// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mentor_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MentorDetailModel _$MentorDetailModelFromJson(Map<String, dynamic> json) {
  return _MentorDetailModel.fromJson(json);
}

/// @nodoc
mixin _$MentorDetailModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get help => throw _privateConstructorUsedError;
  String? get experience => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this MentorDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MentorDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentorDetailModelCopyWith<MentorDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentorDetailModelCopyWith<$Res> {
  factory $MentorDetailModelCopyWith(
    MentorDetailModel value,
    $Res Function(MentorDetailModel) then,
  ) = _$MentorDetailModelCopyWithImpl<$Res, MentorDetailModel>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String? position,
    String? description,
    String? help,
    String? experience,
    @JsonKey(name: 'created_at') String? createdAt,
  });
}

/// @nodoc
class _$MentorDetailModelCopyWithImpl<$Res, $Val extends MentorDetailModel>
    implements $MentorDetailModelCopyWith<$Res> {
  _$MentorDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentorDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? photoUrl = freezed,
    Object? position = freezed,
    Object? description = freezed,
    Object? help = freezed,
    Object? experience = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
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
            position: freezed == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            help: freezed == help
                ? _value.help
                : help // ignore: cast_nullable_to_non_nullable
                      as String?,
            experience: freezed == experience
                ? _value.experience
                : experience // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MentorDetailModelImplCopyWith<$Res>
    implements $MentorDetailModelCopyWith<$Res> {
  factory _$$MentorDetailModelImplCopyWith(
    _$MentorDetailModelImpl value,
    $Res Function(_$MentorDetailModelImpl) then,
  ) = __$$MentorDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'photo_url') String? photoUrl,
    String? position,
    String? description,
    String? help,
    String? experience,
    @JsonKey(name: 'created_at') String? createdAt,
  });
}

/// @nodoc
class __$$MentorDetailModelImplCopyWithImpl<$Res>
    extends _$MentorDetailModelCopyWithImpl<$Res, _$MentorDetailModelImpl>
    implements _$$MentorDetailModelImplCopyWith<$Res> {
  __$$MentorDetailModelImplCopyWithImpl(
    _$MentorDetailModelImpl _value,
    $Res Function(_$MentorDetailModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MentorDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
    Object? firstName = null,
    Object? lastName = null,
    Object? photoUrl = freezed,
    Object? position = freezed,
    Object? description = freezed,
    Object? help = freezed,
    Object? experience = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$MentorDetailModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        position: freezed == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        help: freezed == help
            ? _value.help
            : help // ignore: cast_nullable_to_non_nullable
                  as String?,
        experience: freezed == experience
            ? _value.experience
            : experience // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorDetailModelImpl extends _MentorDetailModel {
  const _$MentorDetailModelImpl({
    required this.id,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'first_name') required this.firstName,
    @JsonKey(name: 'last_name') required this.lastName,
    @JsonKey(name: 'photo_url') this.photoUrl,
    this.position,
    this.description,
    this.help,
    this.experience,
    @JsonKey(name: 'created_at') this.createdAt,
  }) : super._();

  factory _$MentorDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorDetailModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
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
  final String? position;
  @override
  final String? description;
  @override
  final String? help;
  @override
  final String? experience;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'MentorDetailModel(id: $id, userId: $userId, firstName: $firstName, lastName: $lastName, photoUrl: $photoUrl, position: $position, description: $description, help: $help, experience: $experience, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentorDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.help, help) || other.help == help) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    firstName,
    lastName,
    photoUrl,
    position,
    description,
    help,
    experience,
    createdAt,
  );

  /// Create a copy of MentorDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorDetailModelImplCopyWith<_$MentorDetailModelImpl> get copyWith =>
      __$$MentorDetailModelImplCopyWithImpl<_$MentorDetailModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorDetailModelImplToJson(this);
  }
}

abstract class _MentorDetailModel extends MentorDetailModel {
  const factory _MentorDetailModel({
    required final String id,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(name: 'first_name') required final String firstName,
    @JsonKey(name: 'last_name') required final String lastName,
    @JsonKey(name: 'photo_url') final String? photoUrl,
    final String? position,
    final String? description,
    final String? help,
    final String? experience,
    @JsonKey(name: 'created_at') final String? createdAt,
  }) = _$MentorDetailModelImpl;
  const _MentorDetailModel._() : super._();

  factory _MentorDetailModel.fromJson(Map<String, dynamic> json) =
      _$MentorDetailModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  String? get position;
  @override
  String? get description;
  @override
  String? get help;
  @override
  String? get experience;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;

  /// Create a copy of MentorDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentorDetailModelImplCopyWith<_$MentorDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
