import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_core/functions/screen.dart';
import 'package:flutter_mail_and_drive_design_system/components/modal/modal_window_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/modal/show_modal_bottom_sheet_ds.dart';

import '../../../domain/drive/drive.dart';
import 'file_created_at_widget.dart';
import 'file_extension_image_widget.dart';
import 'file_name_widget.dart';
import 'file_shared_widget.dart';
import 'file_size_widget.dart';

class FileCardWidget extends StatelessWidget {
  final Drive file;
  final bool showSharedButton;

  const FileCardWidget({
    required this.file,
    this.showSharedButton = true,
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
          child: Stack(
            children: [
              if (file.shared.size > 0 && showSharedButton)
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    child: const Icon(
                      Icons.share_rounded,
                      size: 20,
                    ),
                    onTap: () => showModalBottomSheetDS(
                      context: context,
                      widget: ModalWindowDS(
                        title: 'Compartilhado',
                        height: isPortraitOrBigHeightLandscape(context) ? 260 : null,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: FileSharedWidget(file: file),
                        ),
                      ),
                    ),
                  ),
                )
              else
                const SizedBox.shrink(),
              Column(
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
            ],
          ),
        ),
      );
}
