import 'package:flutter/material.dart';
import 'package:play_area/utils/theme.dart';

class elevatedButtonWidget extends StatelessWidget {
  const elevatedButtonWidget(
      {super.key, required this.size, required this.text});

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.39,
      child: ElevatedButton(
          onPressed: () {},
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: buttonColor),
          ),
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Color(primaryColor_200)),
            backgroundColor: WidgetStateProperty.all(primaryColor),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
          )),
    );
  }
}
