import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/core/value_transformers.dart';
import '../../domain/drive/drive.dart';

part 'drive_dto.freezed.dart';

@freezed
class DriveDto with _$DriveDto {
  const DriveDto._();

  const factory DriveDto({
    required String name,
    required String extension,
    required double fileSize,
    required String createdAt,
    List<String>? shared,
  }) = _DriveDto;

  Drive toDomain() => Drive(
        name: name,
        extension: detectFileExtension(extension),
        fileSize: fileSize,
        createdAt: DateTime.parse(createdAt),
        shared: shared != null ? shared!.toImmutableList() : const KtList.empty(),
      );

  bool search({required String term}) =>
      name.toLowerCase().contains(term) ||
      extension.toLowerCase().contains(term) ||
      formatBytes(fileSize).toLowerCase().contains(term);
}
