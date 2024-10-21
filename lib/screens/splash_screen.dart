import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_area/controller/splash_controller.dart';
import 'package:play_area/utils/constant.dart';
import 'package:play_area/utils/theme.dart';
import 'package:play_area/widgets/elevatedButtonWidget.dart';
import 'package:play_area/widgets/outlineButtonWidget.dart';

class SplashScreen extends StatelessWidget {
  final splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    splashController.getUserInfo();

    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.8,
            child: Image(image: AssetImage(splashScreenImagePath)),
          ),
          SizedBox(
            height: size.width * 0.1,
          ),
          Text(appTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(color: primaryColor)),
          SizedBox(
            height: size.width * 0.02,
          ),
          Text(splashScreenBodyText,
              style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(
            height: size.width * 0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              outlineButtonWidget(size: size, text: login),
              SizedBox(
                width: size.width * 0.04,
              ),
              elevatedButtonWidget(size: size, text: signUp),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: null,
                  fillColor: WidgetStateProperty.all(primaryColor),
                ),
                Text(privacyConstant)
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 18),
              child: Text(privacyPolicy),
            ),
          ),
        ],
      ),
    ));
  }
}
