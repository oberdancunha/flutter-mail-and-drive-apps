import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/header/main_header_logo_landscape_ds.dart';

import 'login_form_widget.dart';

class LoginLandscapeWidget extends StatelessWidget {
  const LoginLandscapeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.width * 0.3,
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: MainHeaderLogoLandscapeDS(),
            ),
          ),
          const Expanded(
            child: LoginFormWidget(),
          ),
        ],
      );
}
