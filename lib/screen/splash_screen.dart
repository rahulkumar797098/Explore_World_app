import 'package:explore_world/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appDeep,
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: 130,
                top: 400,
                child: Image.asset(
                  "assets/icon/spIcon.png",
                  height: 150,
                  width: 150,
                ),
              ),
              const Positioned(
                  left: 300,
                  top: 500,
                  child: Text(
                    "World",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "myFontFirst"),
                  )),
              Positioned(
                  left: 20,
                  top: 400,
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
