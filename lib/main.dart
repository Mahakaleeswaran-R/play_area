import 'package:flutter/material.dart';
import 'package:play_area/utils/constant.dart';
import 'package:play_area/utils/theme.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        home: const Scaffold(
          body: SplashScreen(),
        ));
  }
}
