import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/app_template/app_template_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/search/search_ds.dart';

class DrivePage extends StatelessWidget {
  const DrivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AppTemplateDS(
        searchWidget: SearchDS(
          controller: TextEditingController(),
          onPressed: () => null,
          onChanged: (_) => null,
        ),
        appWidget: const Text(
          'Estou no drive',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      );
}
