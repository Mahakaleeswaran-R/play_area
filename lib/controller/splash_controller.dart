import 'package:get/get.dart';
import 'package:play_area/screens/home_screen.dart';

class SplashController extends GetxController {
  static SplashController get find => Get.find();

  Future getUserInfo() async {
    // await Future.delayed(Duration(milliseconds: 5000));
    // Get.to(() => HomeScreen());
  }
}
