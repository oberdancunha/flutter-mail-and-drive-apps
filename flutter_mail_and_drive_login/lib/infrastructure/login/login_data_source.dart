abstract class LoginDataSource {
  Future<String> authenticate(String email, String password);
}
