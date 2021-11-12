import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../domain/core/failures.dart';
import '../../domain/drive/i_drive_repository.dart';
import 'drive_state.dart';

class DriveStore extends StreamStore<DriveFailure, DriveState> {
  final IDriveRepository driveRepository;

  DriveStore({
    required this.driveRepository,
  }) : super(DriveState.initial());

  Future<void> list() async {
    setLoading(true);
    (await driveRepository.list(
      term: state.term,
    ))
        .fold(
      (failure) {
        setError(failure);
        setLoading(false);
      },
      (files) {
        update(
          state.copyWith(
            files: files,
          ),
        );
        setLoading(false);
      },
    );
  }

  Future<void> search({String? term}) async {
    update(
      state.copyWith(
        term: term,
      ),
    );
    await list();
  }
}
