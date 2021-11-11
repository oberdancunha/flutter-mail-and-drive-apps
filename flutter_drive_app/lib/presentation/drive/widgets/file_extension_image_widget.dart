import 'package:flutter/material.dart';
import '../../../domain/drive/file_extensions.dart';

class FileExtensionImageWidget extends StatefulWidget {
  final FileExtension fileExtension;

  const FileExtensionImageWidget({
    required this.fileExtension,
    Key? key,
  }) : super(key: key);

  @override
  State<FileExtensionImageWidget> createState() => _FileExtensionImageWidgetState();
}

class _FileExtensionImageWidgetState extends State<FileExtensionImageWidget> {
  late String _fileExtensionImageMainPath;

  @override
  void initState() {
    super.initState();
    _fileExtensionImageMainPath = 'assets/images/file_extensions';
  }

  @override
  Widget build(BuildContext context) => Image.asset(
        widget.fileExtension.map(
          doc: (_) => '$_fileExtensionImageMainPath/doc.png',
          image: (_) => '$_fileExtensionImageMainPath/image.png',
          json: (_) => '$_fileExtensionImageMainPath/json.png',
          pdf: (_) => '$_fileExtensionImageMainPath/pdf.png',
          ppt: (_) => '$_fileExtensionImageMainPath/ppt.png',
          zip: (_) => '$_fileExtensionImageMainPath/zip.png',
          unknown: (_) => '$_fileExtensionImageMainPath/unknown.png',
        ),
        fit: BoxFit.cover,
        height: 85,
      );
}
