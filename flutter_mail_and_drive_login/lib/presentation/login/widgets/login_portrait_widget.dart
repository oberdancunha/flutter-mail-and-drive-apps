import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/header/main_header_logo_portrait_ds.dart';

import 'login_form_widget.dart';

class LoginPortraitWidget extends StatelessWidget {
  const LoginPortraitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: MainHeaderLogoPortraitDS(),
            ),
          ),
          const Expanded(
            child: LoginFormWidget(),
          ),
        ],
      );
}
