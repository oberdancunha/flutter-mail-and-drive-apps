abstract class AuthDataSource {
  Future<void> addAuthentication(String token);
  Future<String> getAuthentication();
  Future<void> removeAuthentication();
}
