import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../domain/drive/drive.dart';
import 'file_card_widget.dart';

class FileSharedWidget extends StatelessWidget {
  final Drive file;

  const FileSharedWidget({
    required this.file,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: SizedBox(
                width: 150,
                child: FileCardWidget(
                  file: file,
                  showSharedButton: false,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: file.shared.size,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemBuilder: (_, index) => AutoSizeText(
                  file.shared.get(index),
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      );
}
