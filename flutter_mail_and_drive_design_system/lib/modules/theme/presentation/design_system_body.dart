import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../component/button_change_theme.dart';

class DesignSystemBody extends StatefulWidget {
  final String pageRoute;

  const DesignSystemBody({
    required this.pageRoute,
    Key? key,
  }) : super(key: key);

  @override
  State<DesignSystemBody> createState() => _DesignSystemBodyState();
}

class _DesignSystemBodyState extends State<DesignSystemBody> {
  @override
  void initState() {
    super.initState();
    Modular.to.navigate(widget.pageRoute);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: NativeDeviceOrientationReader(
          builder: (context) {
            final orientation = NativeDeviceOrientationReader.orientation(context);

            return SafeArea(
              left: false,
              right: false,
              minimum: EdgeInsets.only(
                left: orientation == NativeDeviceOrientation.landscapeLeft
                    ? MediaQuery.of(context).viewPadding.left / 1.5
                    : 1,
                right: orientation == NativeDeviceOrientation.landscapeRight
                    ? MediaQuery.of(context).viewPadding.right / 1.5
                    : 1,
              ),
              child: LayoutBuilder(
                builder: (context, constraints) => Container(
                  constraints: constraints,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: ButtonChangeTheme(),
                        ),
                      ),
                      Expanded(
                        child: RouterOutlet(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
}
