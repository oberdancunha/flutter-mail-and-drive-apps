import 'package:flutter/material.dart';

Future<void> showModalBottomSheetDS({
  required BuildContext context,
  required Widget widget,
}) =>
    showModalBottomSheet(
      context: context,
      barrierColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => widget,
    );
