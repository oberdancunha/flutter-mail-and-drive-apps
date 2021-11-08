import 'dart:typed_data';

import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../infrastructure/argon2_configuration/argon2_configuration_data_source.dart';
import '../../infrastructure/encrypt/encrypt.dart';

class Argon2Encrypt implements Encrypt {
  final Argon2ConfigurationDataSource argon2ConfigurationDataSource;

  Argon2Encrypt({required this.argon2ConfigurationDataSource});

  @override
  String generate(String value) {
    final salt = argon2ConfigurationDataSource.secretKey.toBytesLatin1();
    final parameters = Argon2Parameters(
      Argon2Parameters.ARGON2_i,
      salt,
      version: Argon2Parameters.ARGON2_VERSION_10,
      iterations: argon2ConfigurationDataSource.parametersInteractions,
      memoryPowerOf2: argon2ConfigurationDataSource.parametersMemoryPowerOf2,
    );
    final argon2 = Argon2BytesGenerator()..init(parameters);
    final valueBytes = parameters.converter.convert(value);
    final result = Uint8List(argon2ConfigurationDataSource.bytesLenght);
    argon2.generateBytes(
      valueBytes,
      result,
      argon2ConfigurationDataSource.bytesOutOff,
      result.length,
    );
    final resultHex = result.toHexString();

    return resultHex;
  }
}
