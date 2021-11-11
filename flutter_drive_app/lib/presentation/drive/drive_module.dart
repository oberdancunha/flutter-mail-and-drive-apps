import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/drive/drive_store.dart';
import '../../domain/drive/i_drive_repository.dart';
import '../../external/drive/drive_memory/drive_memory_my_data_source.dart';
import '../../infrastructure/drive/drive_data_source.dart';
import '../../infrastructure/drive/drive_memory/drive_memory_repository.dart';
import 'drive_page.dart';

class DriveModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton<DriveDataSource>((i) => DriveMemoryMyDataSource()),
    Bind.lazySingleton<IDriveRepository>((i) => DriveMemoryRepository(driveDataSource: i())),
    Bind.lazySingleton<DriveStore>((i) => DriveStore(driveRepository: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => const DrivePage(),
    ),
  ];
}
