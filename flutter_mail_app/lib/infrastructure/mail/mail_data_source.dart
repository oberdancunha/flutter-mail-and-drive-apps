import 'mail_details_dto.dart';

abstract class MailDataSource {
  Stream<List<MailDetailsDto>> list();
  Future<void> add(MailDetailsDto mail);
  Future<MailDetailsDto> search(String uid);
}
