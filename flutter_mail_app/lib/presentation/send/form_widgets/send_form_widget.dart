import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_core/functions/screen.dart';

import 'send_form_landscape_widget.dart';
import 'send_form_portrait_widget.dart';

class SendFormWidget extends StatelessWidget {
  const SendFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: isPortraitOrBigHeightLandscape(context)
            ? const SendFormPortraitWidget()
            : const SendFormLandscapeWidget(),
      );
}
