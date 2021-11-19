import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../application/auth/auth_service.dart';
import '../application/auth/auth_store.dart';
import '../application/auth_logout/auth_logout_store.dart';
import '../domain/auth/i_auth_repository.dart';
import '../external/auth/auth_shared_preference_data_source.dart';
import '../external/jwt/jwt_jaguar.dart';
import '../external/jwt_configuration/jwt_configuration_env_data_source.dart';
import '../infrastructure/auth/auth_data_source.dart';
import '../infrastructure/auth/auth_repository.dart';
import '../infrastructure/jwt/jwt.dart';
import '../infrastructure/jwt_configuration/jwt_configuration_data_source.dart';

final loginAppInitialLoadBinds = [
  Bind.lazySingleton<JwtConfigurationDataSource>((i) => JwtConfigurationEnvDataSource()),
  Bind.lazySingleton<Jwt>((i) => JwtJaguar(jwtConfigurationDataSource: i())),
  Bind.lazySingleton<AuthDataSource>(
    (i) => AuthSharedPreferenceDataSource(),
  ),
  Bind.singleton<IAuthRepository>(
    (i) => AuthRepository(
      authDataSource: i(),
      jwt: i(),
    ),
  ),
  Bind.lazySingleton((i) => AuthService(authRepository: i())),
  Bind.lazySingleton((i) => AuthStore(authRepository: i())),
  Bind.lazySingleton((i) => AuthLogoutStore(authRepository: i())),
];
