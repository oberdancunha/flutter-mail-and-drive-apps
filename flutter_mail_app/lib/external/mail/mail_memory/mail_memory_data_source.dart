import 'dart:async';

import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../domain/core/exceptions.dart';
import '../../../infrastructure/mail/mail_data_source.dart';
import '../../../infrastructure/mail/mail_details_dto.dart';

class MailMemoryDataSource implements MailDataSource {
  late List<MailDetailsDto> mails;
  final StreamController<List<MailDetailsDto>> mailsStream =
      StreamController<List<MailDetailsDto>>.broadcast();

  @override
  Stream<List<MailDetailsDto>> list() {
    mailsStream.addStream(
      Stream.fromFuture(
        Future.delayed(
          Duration.zero,
          () => mails,
        ).onError(
          (error, stackTrace) => throw UnexpectedException(error: error.toString()),
        ),
      ),
    );

    return mailsStream.stream;
  }

  @override
  Future<void> add(MailDetailsDto mail) => Future.delayed(Duration.zero, () {
        const uuid = Uuid();
        mails.insert(
          0,
          mail.copyWith(
            uid: uuid.v4(),
          ),
        );
        mailsStream.add(mails);
      }).onError((error, stackTrace) => throw UnexpectedException(error: error.toString()));

  @override
  Future<MailDetailsDto> search(String uid) => Future.delayed(
        Duration.zero,
        () => mails.singleWhere((mail) => mail.uid == uid),
      ).onError((error, stackTrace) => throw UnexpectedException(error: error.toString()));
}
