import 'package:flutter_mail_and_drive_core/domain/core/exceptions.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../domain/core/failures.dart';
import '../../../domain/mail/i_send_mail_repository.dart';
import '../../../domain/mail/mail_details.dart';
import '../mail_data_source.dart';
import '../mail_details_dto.dart';

class SendMailMemoryRepository implements ISendMailRepository {
  final MailDataSource mailDataSource;
  const SendMailMemoryRepository({required this.mailDataSource});

  @override
  Future<Either<MailFailure, Unit>> send(MailDetails mail) async {
    try {
      await mailDataSource.add(MailDetailsDto.fromDomain(mail));

      return right(unit);
    } on UnexpectedException catch (error) {
      return left(MailFailure.send(error: error.toString()));
    }
  }
}
