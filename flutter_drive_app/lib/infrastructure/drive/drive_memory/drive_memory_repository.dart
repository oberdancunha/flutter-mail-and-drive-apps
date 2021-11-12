import 'package:flutter_mail_and_drive_core/domain/core/exceptions.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../domain/core/failures.dart';
import '../../../domain/drive/drive.dart';
import '../../../domain/drive/i_drive_repository.dart';
import '../drive_data_source.dart';

class DriveMemoryRepository implements IDriveRepository {
  final DriveDataSource driveDataSource;

  DriveMemoryRepository({
    required this.driveDataSource,
  });

  @override
  Future<Either<DriveFailure, KtList<Drive>>> list({String? term}) async {
    try {
      final files = await driveDataSource.list(term: term);

      return right(files.map((file) => file.toDomain()).toImmutableList());
    } on UnexpectedException catch (error) {
      return left(DriveFailure.unexpected(error: error.error));
    }
  }
}
