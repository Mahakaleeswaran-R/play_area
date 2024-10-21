import 'package:flutter/material.dart';
import 'package:play_area/utils/theme.dart';

class outlineButtonWidget extends StatelessWidget {
  const outlineButtonWidget(
      {super.key, required this.size, required this.text});

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size.width * 0.39,
        child: OutlinedButton(
            onPressed: () {},
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: primaryColor),
            ),
            style: OutlinedButton.styleFrom(
                overlayColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                side: BorderSide(color: primaryColor))));
  }
}
