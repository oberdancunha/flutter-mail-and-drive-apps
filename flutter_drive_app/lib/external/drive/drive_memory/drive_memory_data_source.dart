import 'package:flutter_mail_and_drive_core/domain/core/exceptions.dart';

import '../../../infrastructure/drive/drive_data_source.dart';
import '../../../infrastructure/drive/drive_dto.dart';

class DriveMemoryDataSource implements DriveDataSource {
  late List<DriveDto> files;

  @override
  Future<List<DriveDto>> list() => Future.delayed(
        Duration.zero,
        () => files,
      ).onError((error, stackTrace) => throw UnexpectedException(error: error.toString()));
}
