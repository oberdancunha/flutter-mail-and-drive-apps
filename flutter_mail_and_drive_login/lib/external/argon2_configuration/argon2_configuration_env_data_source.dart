import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../infrastructure/argon2_configuration/argon2_configuration_data_source.dart';

class Argon2ConfigurationEnvDataSource implements Argon2ConfigurationDataSource {
  DotEnv dotEnvArgon2 = DotEnv();

  Argon2ConfigurationEnvDataSource() {
    dotEnvArgon2.load(
      fileName: 'packages/flutter_mail_and_drive_login/assets/.argon2_env',
    );
  }

  @override
  int get bytesLenght => int.tryParse(
        dotEnvArgon2.get(
          'BYTES_LENGTH',
          fallback: '1',
        ),
      )!;

  @override
  int get parametersInteractions => int.tryParse(
        dotEnvArgon2.get(
          'PARAMETERS_INTERACTIONS',
          fallback: '2',
        ),
      )!;

  @override
  int get parametersMemoryPowerOf2 => int.tryParse(
        dotEnvArgon2.get(
          'PARAMETERS_MEMORYPOWEROF2',
          fallback: '1',
        ),
      )!;

  @override
  String get secretKey => dotEnvArgon2.get(
        'SECRET_KEY',
        fallback: '',
      );

  @override
  int get bytesOutOff => int.tryParse(
        dotEnvArgon2.get(
          'BYTES_OUT_OFF',
          fallback: '0',
        ),
      )!;
}
