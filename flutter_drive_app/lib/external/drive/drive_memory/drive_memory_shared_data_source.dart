import '../../../infrastructure/drive/drive_dto.dart';
import 'drive_memory_data_source.dart';

class DriveMemorySharedDataSource extends DriveMemoryDataSource {
  DriveMemorySharedDataSource() {
    files = [
      const DriveDto(
        name: 'Arquivo 2',
        extension: 'image',
        fileSize: 9835642.88,
        createdAt: "2021-11-09 15:44:10Z",
        shared: [
          'User 1 <user1@drive.com>',
          'User 3 <user3@drive.com>',
          'User 4 <user4@drive.com>',
        ],
      ),
      const DriveDto(
        name: 'Arquivo 5',
        extension: 'ppt',
        fileSize: 19713228.8,
        createdAt: "2021-11-06 17:05:15Z",
        shared: [
          'User 1 <user1@drive.com>',
          'User 2 <user2@drive.com>',
          'User 10 <user10@drive.com>',
        ],
      ),
      const DriveDto(
        name: 'Arquivo 6',
        extension: 'zip',
        fileSize: 9458155539.2,
        createdAt: "2021-11-10 14:22:05Z",
        shared: [
          'User 2 <user2@drive.com>',
          'User 5 <user5@drive.com>',
          'User 8 <user8@drive.com>',
        ],
      ),
    ];
  }
}
