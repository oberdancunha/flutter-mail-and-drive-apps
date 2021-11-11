import '../../../infrastructure/drive/drive_dto.dart';
import 'drive_memory_data_source.dart';

class DriveMemoryMyDataSource extends DriveMemoryDataSource {
  DriveMemoryMyDataSource() {
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
      const DriveDto(
        name: 'Arquivo 4',
        extension: 'pdf',
        fileSize: 10485760,
        createdAt: "2021-11-07 23:59:59Z",
      ),
      const DriveDto(
        name: 'Arquivo 5',
        extension: 'ppt',
        fileSize: 19713228.8,
        createdAt: "2021-11-06 17:05:15Z",
      ),
      const DriveDto(
        name: 'Arquivo 6',
        extension: 'zip',
        fileSize: 9458155539.2,
        createdAt: "2021-11-10 14:22:05Z",
      ),
      const DriveDto(
        name: 'Arquivo 7',
        extension: 'xls',
        fileSize: 4299161.6,
        createdAt: "2021-11-05 21:12:44Z",
      ),
    ];
  }
}
