import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

class ButtonDoneKeyboardDS extends StatelessWidget {
  final Widget child;
  final FocusNode focusNode;

  const ButtonDoneKeyboardDS({
    required this.child,
    required this.focusNode,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => KeyboardActions(
        config: KeyboardActionsConfig(
          keyboardBarColor: Colors.transparent,
          actions: [
            KeyboardActionsItem(
              focusNode: focusNode,
              displayArrows: false,
              displayDoneButton: false,
              toolbarButtons: [
                (node) => GestureDetector(
                      onTap: () => node.unfocus(),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade600,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            Platform.isAndroid ? 'OK' : 'concluído',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ],
        ),
        child: child,
      );
}
