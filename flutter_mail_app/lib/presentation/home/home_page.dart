import 'package:flutter/material.dart';

import '../core/widgets/logo_widget.dart';
import 'widgets/menu_tools/menu_tools_screen_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: const [
            MenuToolsScreenWidget(),
            Positioned(
              left: 15,
              child: SizedBox(
                height: 50,
                child: LogoWidget(),
              ),
            ),
          ],
        ),
      );
}
