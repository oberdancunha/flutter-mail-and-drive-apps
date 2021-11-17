import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../infrastructure/jwt_configuration/jwt_configuration_data_source.dart';

class JwtConfigurationEnvDataSource implements JwtConfigurationDataSource {
  JwtConfigurationEnvDataSource() {
    dotenv.load(
      fileName: 'packages/flutter_mail_and_drive_login/assets/.jwt_env',
    );
  }

  @override
  String get secretKey => dotenv.get(
        'SECRET_KEY',
        fallback: '',
      );
}
