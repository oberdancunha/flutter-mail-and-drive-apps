import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

part 'file_extensions.freezed.dart';

@freezed
abstract class FileExtension with _$FileExtension {
  const factory FileExtension.doc() = _Doc;
  const factory FileExtension.image() = _Image;
  const factory FileExtension.json() = _Json;
  const factory FileExtension.pdf() = _Pdf;
  const factory FileExtension.ppt() = _Ppt;
  const factory FileExtension.zip() = _Zip;
  const factory FileExtension.unknown() = _Unknown;
}
