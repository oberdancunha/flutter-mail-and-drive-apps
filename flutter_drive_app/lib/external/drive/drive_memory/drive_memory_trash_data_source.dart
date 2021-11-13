import '../../../infrastructure/drive/drive_dto.dart';
import 'drive_memory_data_source.dart';

class DriveMemoryTrashDataSource extends DriveMemoryDataSource {
  DriveMemoryTrashDataSource() {
    files = [
      const DriveDto(
        name: 'File Trash 1',
        extension: 'doc',
        fileSize: 4299161.6,
        createdAt: "2021-11-13 07:11:21Z",
      ),
      const DriveDto(
        name: 'File Trash 2',
        extension: 'doc',
        fileSize: 102400,
        createdAt: "2021-11-12 19:35:00Z",
      ),
      const DriveDto(
        name: 'File Trash 3',
        extension: 'pdf',
        fileSize: 716800,
        createdAt: "2021-11-11 21:53:10Z",
      ),
      const DriveDto(
        name: 'File Trash 4',
        extension: 'image',
        fileSize: 2097152,
        createdAt: "2021-11-10 09:44:30Z",
      ),
      const DriveDto(
        name: 'File Trash 5',
        extension: 'json',
        fileSize: 204800,
        createdAt: "2021-11-09 14:10:21Z",
      ),
    ];
  }
}
