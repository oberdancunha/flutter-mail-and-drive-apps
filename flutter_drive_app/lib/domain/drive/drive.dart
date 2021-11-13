import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import 'file_extensions.dart';

part 'drive.freezed.dart';

@freezed
class Drive with _$Drive {
  const Drive._();

  const factory Drive({
    required String name,
    required FileExtension extension,
    required double fileSize,
    required DateTime createdAt,
    required KtList<String> shared,
  }) = _Drive;
}
