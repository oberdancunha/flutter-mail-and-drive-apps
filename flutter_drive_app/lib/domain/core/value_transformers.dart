import 'dart:math';

import '../drive/file_extensions.dart';

FileExtension detectFileExtension(String extension) {
  final extensionsOptions = Map.of(
    {
      'doc': const FileExtension.doc(),
      'image': const FileExtension.image(),
      'json': const FileExtension.json(),
      'pdf': const FileExtension.pdf(),
      'ppt': const FileExtension.ppt(),
      'zip': const FileExtension.zip(),
      'unknown': const FileExtension.unknown(),
    },
  );
  final extensionDetected = extensionsOptions.containsKey(extension)
      ? extensionsOptions[extension]
      : extensionsOptions['unknown'];

  return extensionDetected!;
}

String formatBytes(double size) {
  final sizeSplitted = size.toString().split('.');
  final bytes = int.tryParse(sizeSplitted.elementAt(0)) ?? 0;
  final decimals = int.tryParse(sizeSplitted.elementAt(1)) ?? 0;
  if (bytes <= 0 && decimals <= 0) {
    return '0 B';
  }
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
  final i = (log(bytes) / log(1024)).floor();

  // ignore: prefer_interpolation_to_compose_strings
  return ((bytes / pow(1024, i)).toStringAsFixed(decimals >= 2 ? 2 : 0)) + ' ' + suffixes[i];
}
