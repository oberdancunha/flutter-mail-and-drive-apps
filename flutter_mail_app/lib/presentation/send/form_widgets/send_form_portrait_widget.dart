import 'package:flutter/material.dart';

import 'send_button_widget.dart';
import 'send_content_widget.dart';
import 'send_from_or_to_subject_widget.dart';

class SendFormPortraitWidget extends StatelessWidget {
  const SendFormPortraitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SendFromOrToSubjectWidget(),
          SizedBox(height: 25),
          Expanded(child: SendContentWidget()),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 40,
              width: 90,
              child: SendButtonWidget(),
            ),
          ),
        ],
      );
}
