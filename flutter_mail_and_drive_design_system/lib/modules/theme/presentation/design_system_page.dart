import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../application/theme_state.dart';
import '../application/theme_store.dart';

class DesignSystemPage extends StatefulWidget {
  final String title;
  final String initialRoute;

  const DesignSystemPage({
    required this.title,
    required this.initialRoute,
    Key? key,
  }) : super(key: key);

  @override
  _DesignSystemPageState createState() => _DesignSystemPageState();
}

class _DesignSystemPageState extends State<DesignSystemPage> {
  final themeStore = Modular.get<ThemeStore>();

  @override
  void initState() {
    super.initState();
    themeStore.getTheme();
  }

  @override
  Widget build(BuildContext context) => ScopedBuilder<ThemeStore, Void, ThemeState>.transition(
        store: themeStore,
        transition: (_, child) => AnimatedSwitcher(
          duration: Duration.zero,
          child: child,
        ),
        onState: (_, state) => state.wasSearched
            ? MaterialApp(
                title: widget.title,
                debugShowCheckedModeBanner: false,
                theme: state.theme,
                initialRoute: widget.initialRoute,
                builder: (context, widget) => ResponsiveWrapper.builder(
                  BouncingScrollWrapper.builder(context, widget!),
                  maxWidth: 1200,
                  minWidth: 480,
                  defaultScale: true,
                  breakpoints: [
                    const ResponsiveBreakpoint.resize(480, name: MOBILE),
                    const ResponsiveBreakpoint.autoScale(1200, name: TABLET),
                    const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
                  ],
                ),
              ).modular()
            : Container(
                color: Colors.white,
              ),
      );
}
