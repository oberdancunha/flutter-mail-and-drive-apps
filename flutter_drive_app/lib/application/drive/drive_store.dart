import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/core/failures.dart';
import '../../domain/drive/drive.dart';
import '../../domain/drive/i_drive_repository.dart';

class DriveStore extends StreamStore<DriveFailure, KtList<Drive>> {
  final IDriveRepository driveRepository;

  DriveStore({
    required this.driveRepository,
  }) : super(const KtList.empty());

  Future<void> list() async {
    setLoading(true);
    (await driveRepository.list()).fold(
      (failure) {
        setError(failure);
        setLoading(false);
      },
      (files) {
        update(files);
        setLoading(false);
      },
    );
  }
}
