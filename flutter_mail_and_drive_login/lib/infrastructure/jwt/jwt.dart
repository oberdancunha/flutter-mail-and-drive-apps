abstract class Jwt {
  String generator(String email);
  String getUserLogged(String token);
}
