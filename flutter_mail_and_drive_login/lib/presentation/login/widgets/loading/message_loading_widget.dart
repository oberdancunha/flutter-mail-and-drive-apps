import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'image_loading_widget.dart';

class MessageLoadingWidget extends StatelessWidget {
  final String message;

  const MessageLoadingWidget({
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Dialog(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const ImageLoadingWidget(),
                    Text(
                      message,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
