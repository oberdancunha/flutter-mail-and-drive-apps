import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/button/button_done_keyboard_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../../application/send_mail/send_mail_store.dart';

class SendContentWidget extends StatefulWidget {
  const SendContentWidget({Key? key}) : super(key: key);

  @override
  State<SendContentWidget> createState() => _SendContentWidgetState();
}

class _SendContentWidgetState extends State<SendContentWidget> {
  final _sendMailStore = Modular.get<SendMailStore>();
  late QuillController _quillController;
  late FocusNode _focusNode;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _quillController = QuillController.basic();
    _focusNode = FocusNode();
    _scrollController = ScrollController();
    _quillController.addListener(() {
      _sendMailStore.contentChanged(
        jsonEncode(_quillController.document.toDelta().toJson().elementAt(0)['insert']),
      );
    });
  }

  @override
  void dispose() {
    _quillController.dispose();
    _focusNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          QuillToolbar.basic(
            controller: _quillController,
            locale: const Locale('pt-BR'),
            showLink: false,
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Scrollbar(
              controller: _scrollController,
              child: ButtonDoneKeyboardDS(
                focusNode: _focusNode,
                child: QuillEditor(
                  controller: _quillController,
                  readOnly: false,
                  scrollable: true,
                  autoFocus: false,
                  expands: false,
                  focusNode: _focusNode,
                  padding: EdgeInsets.zero,
                  scrollController: _scrollController,
                  keyboardAppearance: Theme.of(context).brightness,
                ),
              ),
            ),
          ),
        ],
      );
}
