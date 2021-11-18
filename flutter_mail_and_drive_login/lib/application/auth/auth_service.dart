import '../../domain/auth/i_auth_repository.dart';

class AuthService {
  final IAuthRepository authRepository;

  AuthService({required this.authRepository}) : super();

  Future<void> addAuthentication(String token) async {
    await authRepository.addAuthentication(token);
  }

  Future<bool> isLogged() async => (await authRepository.getAuthentication()).fold(
        (_) => false,
        (_) => true,
      );
}
