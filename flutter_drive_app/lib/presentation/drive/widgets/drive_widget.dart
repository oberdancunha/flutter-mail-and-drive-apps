import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../domain/drive/drive.dart';
import 'file_card_widget.dart';

class DriveWidget extends StatelessWidget {
  final KtList<Drive> files;

  const DriveWidget({required this.files, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ResponsiveGridView.builder(
        gridDelegate: const ResponsiveGridDelegate(
          crossAxisExtent: 180,
          childAspectRatio: 0.9,
        ),
        alignment: Alignment.center,
        itemCount: files.size,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          final file = files.elementAt(index);

          return Padding(
            padding: const EdgeInsets.only(
              bottom: 8,
              right: 8,
              left: 8,
            ),
            child: FileCardWidget(file: file),
          );
        },
      );
}
