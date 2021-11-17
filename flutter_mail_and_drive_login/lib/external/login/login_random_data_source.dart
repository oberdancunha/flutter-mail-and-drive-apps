import 'dart:math';

import '../../domain/core/exceptions.dart';
import '../../infrastructure/jwt/jwt.dart';
import '../../infrastructure/login/login_data_source.dart';

class LoginRandomDataSource implements LoginDataSource {
  final Jwt jwt;

  LoginRandomDataSource({required this.jwt});

  @override
  Future<String> authenticate(String email, String password) async {
    final random = Random();
    final randomNumber = random.nextInt(99);

    return Future.delayed(
      const Duration(seconds: 2),
      () {
        if (randomNumber.isEven) {
          return jwt.generator(email);
        } else {
          throw LoginException();
        }
      },
    );
  }
}
