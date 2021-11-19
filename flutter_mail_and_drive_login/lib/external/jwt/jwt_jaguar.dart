import 'package:jaguar_jwt/jaguar_jwt.dart';

import '../../domain/core/exceptions.dart';
import '../../infrastructure/jwt/jwt.dart';
import '../../infrastructure/jwt_configuration/jwt_configuration_data_source.dart';

class JwtJaguar implements Jwt {
  final JwtConfigurationDataSource jwtConfigurationDataSource;

  JwtJaguar({required this.jwtConfigurationDataSource});

  @override
  String generator(String email) {
    final claimSet = JwtClaim(
      subject: email,
    );
    final token = issueJwtHS256(
      claimSet,
      jwtConfigurationDataSource.secretKey,
    );

    return token;
  }

  @override
  String getUserLogged(String token) {
    try {
      final jwt = verifyJwtHS256Signature(
        token,
        jwtConfigurationDataSource.secretKey,
      );

      return jwt.subject!;
    } on JwtException catch (error) {
      throw NotUserAuthenticationException(errorMessage: error.message);
    }
  }
}
