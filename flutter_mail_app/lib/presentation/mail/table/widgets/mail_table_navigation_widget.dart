import 'package:flutter/material.dart';

class MailTableNavigationWidget extends StatelessWidget {
  final int total;
  final int initialData;
  final int lastData;
  final Function() navigationPrevious;
  final Function() navigationNext;

  const MailTableNavigationWidget({
    required this.total,
    required this.initialData,
    required this.lastData,
    required this.navigationPrevious,
    required this.navigationNext,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: Theme.of(context).dataTableTheme.decoration,
        width: double.infinity,
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildValue(initialData.toString()),
              _buildValue(' - '),
              _buildValue(lastData.toString()),
              _buildValue(' de '),
              _buildValue(total.toString()),
              const SizedBox(width: 20),
              _buildIconNavigation(
                icon: Icons.arrow_back_ios,
                color: initialData > 1
                    ? Theme.of(context).iconTheme.color!
                    : Theme.of(context).iconTheme.color!.withOpacity(0.5),
                onPressed: initialData > 1 ? navigationPrevious : () => null,
              ),
              const SizedBox(width: 10),
              _buildIconNavigation(
                icon: Icons.arrow_forward_ios,
                color: lastData < total
                    ? Theme.of(context).iconTheme.color!
                    : Theme.of(context).iconTheme.color!.withOpacity(0.5),
                onPressed: lastData < total ? navigationNext : () => null,
              ),
            ],
          ),
        ),
      );

  Text _buildValue(String value) => Text(
        value,
        style: const TextStyle(fontSize: 15),
      );

  IconButton _buildIconNavigation({
    required IconData icon,
    required Color color,
    required Function() onPressed,
  }) =>
      IconButton(
        icon: Icon(
          icon,
          size: 15,
          color: color,
        ),
        onPressed: onPressed,
      );
}
