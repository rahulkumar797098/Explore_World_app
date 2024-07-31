import 'package:explore_world/screen/all_state/kerla/adventureScreen.dart';
import 'package:explore_world/screen/all_state/kerla/beachScreen.dart';
import 'package:explore_world/screen/all_state/kerla/foodScreen.dart';
import 'package:explore_world/screen/all_state/kerla/kerala_home_screen.dart';
import 'package:explore_world/screen/all_state/kerla/mostLovedPlace.dart';
import 'package:explore_world/screen/beach_details_screen.dart';
import 'package:explore_world/screen/beach_screen_main.dart';
import 'package:explore_world/screen/bottom_navigation_screen.dart';
import 'package:explore_world/screen/camp_screen_main.dart';
import 'package:explore_world/screen/categories_screen.dart';
import 'package:explore_world/screen/favorits_screen.dart';
import 'package:explore_world/screen/home_screen.dart';
import 'package:explore_world/screen/international_screen.dart';
import 'package:explore_world/screen/login_and_signup/login_screen.dart';
import 'package:explore_world/screen/login_and_signup/signup_screen.dart';
import 'package:explore_world/screen/national_screen.dart';
import 'package:explore_world/screen/splash_screen.dart';
import 'package:explore_world/screen/start_screen.dart';
import 'package:explore_world/screen/support_screen.dart';
import 'package:explore_world/screen/user_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen()
    );
  }
}
