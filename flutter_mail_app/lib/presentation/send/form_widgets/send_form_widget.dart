import 'package:flutter/material.dart';

import 'send_form_landscape_widget.dart';
import 'send_form_portrait_widget.dart';

class SendFormWidget extends StatelessWidget {
  const SendFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: MediaQuery.of(context).orientation == Orientation.portrait ||
                MediaQuery.of(context).size.height >= 700
            ? const SendFormPortraitWidget()
            : const SendFormLandscapeWidget(),
      );
}
