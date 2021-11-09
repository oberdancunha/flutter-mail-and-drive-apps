import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

part 'menu_tools_list_model.freezed.dart';

@freezed
abstract class MenuToolsListModel with _$MenuToolsListModel {
  const MenuToolsListModel._();

  const factory MenuToolsListModel({
    required String path,
    required IconData iconData,
    required String label,
  }) = _MenuToolsListModel;
}
