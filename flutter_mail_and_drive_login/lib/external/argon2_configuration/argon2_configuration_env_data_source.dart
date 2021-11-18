import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../infrastructure/argon2_configuration/argon2_configuration_data_source.dart';

class Argon2ConfigurationEnvDataSource implements Argon2ConfigurationDataSource {
  Argon2ConfigurationEnvDataSource() {
    dotenv.load(
      fileName: 'packages/flutter_mail_and_drive_login/assets/.argon2_env',
    );
  }

  @override
  int get bytesLenght => int.tryParse(
        dotenv.get(
          'BYTES_LENGTH',
          fallback: '1',
        ),
      )!;

  @override
  int get parametersInteractions => int.tryParse(
        dotenv.get(
          'PARAMETERS_INTERACTIONS',
          fallback: '2',
        ),
      )!;

  @override
  int get parametersMemoryPowerOf2 => int.tryParse(
        dotenv.get(
          'PARAMETERS_MEMORYPOWEROF2',
          fallback: '1',
        ),
      )!;

  @override
  String get secretKey => dotenv.get(
        'SECRET_KEY',
        fallback: '',
      );

  @override
  int get bytesOutOff => int.tryParse(
        dotenv.get(
          'BYTES_OUT_OFF',
          fallback: '0',
        ),
      )!;
}
