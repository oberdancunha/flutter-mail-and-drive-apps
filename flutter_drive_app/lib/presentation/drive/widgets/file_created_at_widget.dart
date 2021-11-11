import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

class FileCreatedAtWidget extends StatefulWidget {
  final DateTime createdAt;

  const FileCreatedAtWidget({
    required this.createdAt,
    Key? key,
  }) : super(key: key);

  @override
  State<FileCreatedAtWidget> createState() => _FileCreatedAtWidgetState();
}

class _FileCreatedAtWidgetState extends State<FileCreatedAtWidget> {
  late String _locale;
  late TextStyle _textStyle;

  @override
  void initState() {
    super.initState();
    _locale = 'pt_BR';
    initializeDateFormatting(_locale);
    _textStyle = const TextStyle(
      fontSize: 12,
      fontStyle: FontStyle.italic,
    );
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Text(
            'Criado em',
            style: _textStyle,
          ),
          Text(
            DateFormat.yMMMEd(_locale).format(widget.createdAt),
            style: _textStyle,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ],
      );
}
