import 'package:flutter/material.dart';

import '../../../domain/core/value_transformers.dart';

class FileSizeWidget extends StatelessWidget {
  final double fileSize;

  const FileSizeWidget({
    required this.fileSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        formatBytes(fileSize),
        style: const TextStyle(
          fontSize: 12,
        ),
      );
}
