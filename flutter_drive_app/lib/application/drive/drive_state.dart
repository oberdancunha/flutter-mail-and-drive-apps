import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/drive/drive.dart';

part 'drive_state.freezed.dart';

@freezed
abstract class DriveState with _$DriveState {
  const DriveState._();

  const factory DriveState({
    required KtList<Drive> files,
    String? term,
  }) = _DriveState;

  factory DriveState.initial() => const DriveState(
        files: KtList.empty(),
      );
}
