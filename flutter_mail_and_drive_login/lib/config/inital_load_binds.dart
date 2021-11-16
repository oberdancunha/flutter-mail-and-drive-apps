import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../application/auth/auth_service.dart';
import '../domain/auth/i_auth_repository.dart';
import '../external/auth/auth_shared_preference_data_source.dart';
import '../infrastructure/auth/auth_data_source.dart';
import '../infrastructure/auth/auth_repository.dart';

final loginAppInitialLoadBinds = [
  Bind.singleton<AuthDataSource>(
    (i) => AuthSharedPreferenceDataSource(),
  ),
  Bind.singleton<IAuthRepository>((i) => AuthRepository(authDataSource: i())),
  Bind.singleton((i) => AuthService(authRepository: i())),
];
