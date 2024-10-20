import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:play_area/controller/splash_controller.dart';
import 'package:play_area/utils/constant.dart';
import 'package:play_area/utils/theme.dart';

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
            height: size.width * 0.2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.39,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      login,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: primaryColor),
                    ),
                    style: ButtonStyle(
                      side: WidgetStateProperty.all(
                          BorderSide(color: primaryColor)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                    )),
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              SizedBox(
                width: size.width * 0.39,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      signUp,
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(primaryColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                    )),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
