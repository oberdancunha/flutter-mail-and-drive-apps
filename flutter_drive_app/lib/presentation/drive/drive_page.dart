import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/app_template/app_template_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/loading/loading_text_shimmer_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/no_result/empty_result_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/no_result/error_result_ds.dart';
import 'package:flutter_mail_and_drive_modules/flutter_mail_and_drive_modules.dart';

import '../../application/drive/drive_state.dart';
import '../../application/drive/drive_store.dart';
import '../../domain/core/failures.dart';
import '../search/search_widget.dart';
import 'widgets/drive_widget.dart';

class DrivePage extends StatefulWidget {
  const DrivePage({Key? key}) : super(key: key);

  @override
  State<DrivePage> createState() => _DrivePageState();
}

class _DrivePageState extends State<DrivePage> {
  final _driveStore = Modular.get<DriveStore>();

  @override
  void initState() {
    super.initState();
    _driveStore.list();
  }

  @override
  Widget build(BuildContext context) => AppTemplateDS(
        searchWidget: const SearchWidget(),
        appWidget: ScopedBuilder<DriveStore, DriveFailure, DriveState>(
          store: _driveStore,
          onLoading: (_) => const Center(
            child: LoadingTextShimmerDS(),
          ),
          onError: (_, __) => const ErrorResultDS(),
          onState: (_, state) => state.files.size > 0
              ? DriveWidget(
                  files: state.files,
                )
              : const EmptyResultDS(),
        ),
      );
}
