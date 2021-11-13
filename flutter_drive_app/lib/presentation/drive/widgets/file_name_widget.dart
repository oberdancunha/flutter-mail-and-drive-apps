import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

class FileNameWidget extends StatefulWidget {
  final String name;

  const FileNameWidget({
    required this.name,
    Key? key,
  }) : super(key: key);

  @override
  _FileNameWidgetState createState() => _FileNameWidgetState();
}

class _FileNameWidgetState extends State<FileNameWidget> {
  late TextStyle _textStyle;

  @override
  void initState() {
    super.initState();
    _textStyle = const TextStyle(fontSize: 18);
  }

  @override
  Widget build(BuildContext context) => widget.name.length >= 17
      ? SizedBox(
          height: 20,
          child: Marquee(
            text: widget.name,
            style: _textStyle,
            crossAxisAlignment: CrossAxisAlignment.start,
            showFadingOnlyWhenScrolling: false,
            blankSpace: 20,
            startPadding: 10,
          ),
        )
      : Text(
          widget.name,
          style: _textStyle,
        );
}
