import 'package:flutter_mail_and_drive_core/domain/core/exceptions.dart';

import '../../../infrastructure/drive/drive_data_source.dart';
import '../../../infrastructure/drive/drive_dto.dart';

class DriveMemoryDataSource implements DriveDataSource {
  late List<DriveDto> files;

  @override
  Future<List<DriveDto>> list({String? term}) => Future.delayed(
        Duration.zero,
        () {
          if (term != null) {
            return files
                .where(
                  (file) => file.search(term: term.toLowerCase()),
                )
                .toList();
          }

          return files;
        },
      ).onError((error, stackTrace) => throw UnexpectedException(error: error.toString()));
}
