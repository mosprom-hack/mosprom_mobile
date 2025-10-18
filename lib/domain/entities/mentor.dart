import 'package:freezed_annotation/freezed_annotation.dart';

part 'mentor.freezed.dart';

@freezed
class Mentor with _$Mentor {
  const Mentor._();

  const factory Mentor({
    required String id,
    required String firstName,
    required String lastName,
    String? avatarUrl,
    String? specialization,
    String? aboutMe,
    String? helpWith,
    String? experience,
  }) = _Mentor;

  String get fullName => '$firstName $lastName';

  String get fullNameMultiline => '$firstName\n$lastName';
}
