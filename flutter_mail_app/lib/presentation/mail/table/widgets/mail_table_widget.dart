import 'package:flutter/material.dart';
import 'package:flutter_mail_and_drive_design_system/components/modal/modal_window_ds.dart';
import 'package:flutter_mail_and_drive_design_system/components/modal/show_modal_bottom_sheet_ds.dart';

import '../../../../../domain/mail/mail.dart';
import '../../../../domain/core/value_transformers.dart';
import '../../details/mail_details_page.dart';

class MailTableWidget extends StatefulWidget {
  final Mail mails;

  const MailTableWidget({
    required this.mails,
    Key? key,
  }) : super(key: key);

  @override
  State<MailTableWidget> createState() => _MailTableWidgetState();
}

class _MailTableWidgetState extends State<MailTableWidget> {
  late ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Container(
        decoration: Theme.of(context).dataTableTheme.decoration,
        child: Scrollbar(
          controller: _controller,
          isAlwaysShown: true,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Divider(),
                ListView.separated(
                  separatorBuilder: (_, __) => const Divider(),
                  itemCount: widget.mails.details.size,
                  shrinkWrap: true,
                  controller: _controller,
                  itemBuilder: (_, index) {
                    final mailDetails = widget.mails.details.get(index);
                    final wasRead = mailDetails.wasRead;

                    return GestureDetector(
                      onTap: () => showModalBottomSheetDS(
                        context: context,
                        widget: ModalWindowDS(
                          title: 'Ler mensagem',
                          child: MailDetailsPage(
                            uid: mailDetails.uid!,
                          ),
                        ),
                      ),
                      child: Container(
                        color: !wasRead ? Theme.of(context).indicatorColor : Colors.transparent,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildData(
                              width: MediaQuery.of(context).size.width * 0.15,
                              label: mailDetails.fromOrTo,
                              wasRead: wasRead,
                            ),
                            _buildData(
                              width: MediaQuery.of(context).size.width * 0.2,
                              label: mailDetails.subject.getOrError(),
                              wasRead: wasRead,
                            ),
                            _buildData(
                              width: MediaQuery.of(context).size.width * 0.2,
                              label: viewOnlyFirstLineContent(mailDetails.content),
                              wasRead: true,
                            ),
                            _buildData(
                              width: MediaQuery.of(context).size.width * 0.08,
                              label: formatHourWithMinute(
                                mailDetails.date.hour,
                                mailDetails.date.minute,
                              ),
                              wasRead: wasRead,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      );

  Widget _buildData({
    required double width,
    required String label,
    required bool wasRead,
  }) =>
      SizedBox(
        width: width,
        child: Text(
          label,
          style: TextStyle(
            fontWeight: wasRead ? FontWeight.normal : FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      );
}
