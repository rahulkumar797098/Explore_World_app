import 'dart:async';

import 'package:explore_world/colors.dart';
import 'package:explore_world/screen/start_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds:2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=> StartScreen()));
    });

    return Scaffold(
      backgroundColor: appDeep,
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: 130,
                top: 350,
                child: Image.asset(
                  "assets/icon/spIcon.png",
                  height: 150,
                  width: 150,
                ),
              ),
              const Positioned(
                  left: 300,
                  top: 480,
                  child: Text(
                    "World",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "myFontFirst"),
                  )),
              const Positioned(
                  left: 20,
                  top: 340,
                  child: Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "myFontFirst"),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
