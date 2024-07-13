import 'package:explore_world/screen/beach_screen.dart';
import 'package:explore_world/widgets/image_slider.dart';
import 'package:explore_world/widgets/search.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> categories = [
    {"image": "assets/icon/beach.png", "title": "Beach"},
    {"image": "assets/icon/tent.png", "title": "Camp"},
    {"image": "assets/icon/mountains.png", "title": "Mountain"},
    {"image": "assets/icon/water.png", "title": "Water Fall"},
    {"image": "assets/icon/river.png", "title": "River"},
    {"image": "assets/icon/forest.png", "title": "Forest"},
    {"image": "assets/icon/coliseum.png", "title": "Historical"},
    {"image": "assets/icon/city2.png", "title": "City"},
    {"image": "assets/icon/ele.png", "title": "Zoo"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // ..........BODY.................//
        body: Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            // .............Header............//
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        "assets/icon/menu.png",
                      )),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          image: const DecorationImage(
                              image: AssetImage(
                                "assets/icon/devrahul.jpg",
                              ),
                              fit: BoxFit.cover)))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Destination Dreams",
                  style: TextStyle(fontSize: 30, fontFamily: "myFontCu"),
                ),
                Text(
                  "Turn your travel dreams into reality.",
                  style: TextStyle(fontSize: 22, fontFamily: "myFontFirst"),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Search(),
            const SizedBox(
              height: 20,
            ),
            const ImageSlider(),
            const SizedBox(
              height: 30,
            ),

            // Categories
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "categories",
                    style: TextStyle(fontFamily: "myFontFirst", fontSize: 30),
                  ),
                  Text("See All",
                      style: TextStyle(
                          fontFamily: "myFontFirst",
                          fontSize: 20,
                          color: appBlue)),
                ],
              ),
            ),
            SizedBox(
              height: 140,
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        if (categories[index]["title"] == "Beach") {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => BeachScreen()));
                        }  
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: appMimLight,
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: ClipOval(
                                  child: Image.asset(
                                    categories[index]["image"],
                                    fit: BoxFit.cover,
                                    width: 80, // Adjust as needed
                                    height: 80, // Adjust as needed
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              categories[index]["title"],
                              style: const TextStyle(
                                  fontSize: 20, fontFamily: "myFontFirst"),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
