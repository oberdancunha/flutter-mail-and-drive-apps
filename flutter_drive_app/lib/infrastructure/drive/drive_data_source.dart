import 'drive_dto.dart';

abstract class DriveDataSource {
  Future<List<DriveDto>> list({String? term});
}
