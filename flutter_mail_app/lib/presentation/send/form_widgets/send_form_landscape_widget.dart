import 'package:flutter/material.dart';

import 'send_button_widget.dart';
import 'send_content_widget.dart';
import 'send_from_or_to_subject_widget.dart';

class SendFormLandscapeWidget extends StatelessWidget {
  const SendFormLandscapeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SendFromOrToSubjectWidget(),
            const SizedBox(height: 25),
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.width * 0.4,
              ),
              child: const SendContentWidget(),
            ),
            const SizedBox(height: 30),
            const SizedBox(
              height: 40,
              width: 90,
              child: SendButtonWidget(),
            ),
          ],
        ),
      );
}
