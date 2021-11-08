import 'dart:math';

import 'package:jaguar_jwt/jaguar_jwt.dart';

import '../../domain/core/exceptions.dart';
import '../../infrastructure/login/login_data_source.dart';

class LoginRandomDataSource implements LoginDataSource {
  @override
  Future<String> authenticate(String email, String password) async {
    final random = Random();
    final randomNumber = random.nextInt(99);
    final claimSet = JwtClaim(
      maxAge: const Duration(minutes: 10),
    );
    final token = issueJwtHS256(claimSet, 'Isso eh apenas um teste');

    return Future.delayed(
      const Duration(seconds: 2),
      () {
        if (randomNumber.isEven) {
          return token;
        } else {
          throw LoginException();
        }
      },
    );
  }
}
