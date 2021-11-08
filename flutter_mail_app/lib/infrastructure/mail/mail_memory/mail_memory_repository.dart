import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../domain/core/exceptions.dart';
import '../../../domain/core/failures.dart';
import '../../../domain/mail/i_mail_repository.dart';
import '../../../domain/mail/mail.dart';
import '../../../domain/mail/mail_details.dart';
import '../mail_data_source.dart';
import '../mail_dto.dart';

class MailRepository implements IMailRepository {
  final MailDataSource mailDataSource;

  MailRepository({required this.mailDataSource});

  @override
  Stream<Either<MailFailure, Mail>> list({
    required int initialData,
    required int lastData,
    String? term,
  }) async* {
    yield* mailDataSource.list().map((mailsDetails) {
      if (term != null) {
        mailsDetails = mailsDetails.where((mailDetails) => mailDetails.search(term: term)).toList();
      }
      final mailsDto = MailDto(
        total: mailsDetails.length,
        details: mailsDetails
            .getRange(
              initialData,
              lastData < mailsDetails.length ? lastData : mailsDetails.length,
            )
            .toList(),
      );

      return right<MailFailure, Mail>(mailsDto.toDomain());
    }).onErrorReturnWith((error, _) => left(MailFailure.unexpected(error: error.toString())));
  }

  @override
  Future<Either<MailFailure, MailDetails>> search(String uid) async {
    try {
      final mail = await mailDataSource.search(uid);

      return right(mail.toDomain());
    } on UnexpectedException catch (error) {
      return left(MailFailure.search(error: error.toString()));
    }
  }
}
