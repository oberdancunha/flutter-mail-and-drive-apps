import 'package:flutter/material.dart';

bool isPortraitOrBigHeightLandscape(BuildContext context) =>
    MediaQuery.of(context).orientation == Orientation.portrait ||
    MediaQuery.of(context).size.height >= 700;
