import '../../../infrastructure/drive/drive_dto.dart';
import 'drive_memory_data_source.dart';

class DriveMemoryRecentDataSource extends DriveMemoryDataSource {
  DriveMemoryRecentDataSource() {
    files = [
      const DriveDto(
        name: 'Arquivo 1',
        extension: 'doc',
        fileSize: 15728640,
        createdAt: "2021-11-10 02:30:30Z",
      ),
      const DriveDto(
        name: 'Arquivo 2',
        extension: 'image',
        fileSize: 9835642.88,
        createdAt: "2021-11-09 15:44:10Z",
      ),
      const DriveDto(
        name: 'Arquivo 3',
        extension: 'json',
        fileSize: 3460300.8,
        createdAt: "2021-11-08 08:05:20Z",
      ),      
    ];
  }
}
