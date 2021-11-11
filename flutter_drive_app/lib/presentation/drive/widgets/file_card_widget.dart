import 'package:flutter/material.dart';

import '../../../domain/drive/drive.dart';
import 'file_created_at_widget.dart';
import 'file_extension_image_widget.dart';
import 'file_name_widget.dart';
import 'file_size_widget.dart';

class FileCardWidget extends StatelessWidget {
  final Drive file;

  const FileCardWidget({
    required this.file,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).cardColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FileExtensionImageWidget(fileExtension: file.extension),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 5),
                FileNameWidget(name: file.name),
                const SizedBox(height: 5),
                FileSizeWidget(fileSize: file.fileSize),
                const SizedBox(height: 5),
                FileCreatedAtWidget(createdAt: file.createdAt),
              ],
            ),
          ),
        ),
      );
}
