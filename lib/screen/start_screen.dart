import 'package:explore_world/colors.dart';
import 'package:explore_world/screen/bottom_navigation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/image/startImg.jpeg",
                fit: BoxFit.cover,
              )),
          const Positioned(
              top: 40,
              left: 20,
              child: Text(
                "let's Go",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: "myFontCu",
                  color: appWhite,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(2.0, 2.0))
                  ],
                ),
              )),
          const Positioned(
              top: 90,
              left: 20,
              child: Text(
                "Explore \nWorld Enjoy",
                style: TextStyle(
                  fontSize: 55,
                  fontFamily: "myFontFirst",
                  color: appBlack,
                  shadows: [
                    Shadow(
                        color: appWhite,
                        blurRadius: 5,
                        offset: Offset(2.0, 2.0))
                  ],
                ),
              )),
          // Apply InkWell

          Positioned(
              bottom: 80,
              left: 60,
              child: InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavigationScreen()));
                  },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          color: appLight),
                      alignment: Alignment.center,
                      child: const Text(
                        "Explore",
                        style: TextStyle(fontFamily: "myFontFirst", fontSize: 25),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavigationScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: appColor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                          )),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: appWhite,
                          shadows: [
                            Shadow(
                                color: appBlack,
                                blurRadius: 5,
                                offset: Offset(1.0, 2.0))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),

          const Positioned(
              bottom: 30,
              left: 170,
              right: 0,
              child: Text(
                "Skip",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "myFontFirst",
                  color: appWhite,
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        blurRadius: 5,
                        offset: Offset(2.0, 2.0))
                  ],
                ),
              )),

        ],
      ),
    );
  }
}
