import 'package:flutter/material.dart';

class MailDetailsFromOrToSubjectWidget extends StatelessWidget {
  final String fromOrTo;
  final String replyTo;
  final String subject;

  const MailDetailsFromOrToSubjectWidget({
    required this.fromOrTo,
    required this.replyTo,
    required this.subject,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: _buildText(
              text: subject,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 20),
          const Divider(),
          const SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildText(
                  text: fromOrTo,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(width: 3),
                _buildText(
                  text: replyTo,
                  fontSize: 13,
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          const Divider(),
        ],
      );

  Text _buildText({
    required String text,
    required double fontSize,
    FontWeight fontWeight = FontWeight.normal,
  }) =>
      Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      );
}
