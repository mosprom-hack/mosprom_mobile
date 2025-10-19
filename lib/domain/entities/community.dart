import 'package:freezed_annotation/freezed_annotation.dart';

part 'community.freezed.dart';

@freezed
class Community with _$Community {
  const Community._();

  const factory Community({
    required String id,
    required String title,
    required String description,
    required String type,
    String? photoUrl,
    String? createdAt,
  }) = _Community;
}
