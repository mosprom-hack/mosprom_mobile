import 'package:freezed_annotation/freezed_annotation.dart';

part 'mentor_preview_model.freezed.dart';
part 'mentor_preview_model.g.dart';

@freezed
class MentorPreviewModel with _$MentorPreviewModel {
  const factory MentorPreviewModel({
    required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'photo_url') String? photoUrl,
  }) = _MentorPreviewModel;

  factory MentorPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$MentorPreviewModelFromJson(json);
}
