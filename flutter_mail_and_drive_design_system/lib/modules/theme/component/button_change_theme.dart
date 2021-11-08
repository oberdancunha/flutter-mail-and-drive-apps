import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../application/theme_store.dart';

class ButtonChangeTheme extends StatelessWidget {
  final ThemeStore themeStore = Modular.get<ThemeStore>();

  ButtonChangeTheme({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: themeStore.addOrUpdateTheme,
        icon: Icon(
          themeStore.state.themeSourceId == 0 ? Icons.brightness_2 : Icons.brightness_4,
          color: Theme.of(context).primaryIconTheme.color,
        ),
      );
}
