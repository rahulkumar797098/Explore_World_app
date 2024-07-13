import 'package:explore_world/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/place_Card.dart';

class AdventureScreen extends StatefulWidget {
  const AdventureScreen({super.key});

  @override
  State<AdventureScreen> createState() => _AdventurescreenState();
}

class _AdventurescreenState extends State<AdventureScreen> {
  List<Map<String, dynamic>> landAdv = [
    {"Place": "Camping", "Rating": "5.0", "image": "assets/kerala/camping.jpg"},
    {"Place": "Cycling", "Rating": "5.0", "image": "assets/kerala/Cycling.jpg"},
    {
      "Place": "Rock Climbing",
      "Rating": "5.0",
      "image": "assets/kerala/climbing.jpg"
    },
    {
      "Place": "Wildlife Safaris",
      "Rating": "5.0",
      "image": "assets/kerala/wild.jpg"
    },
    {
      "Place": "Trekking and Hiking",
      "Rating": "5.0",
      "image": "assets/kerala/Trekking.webp"
    },
  ];

  List<Map<String, dynamic>> waterAdv = [
    {"Place": "Water Sport", "Rating": "5.0", "image": "assets/kerala/Water-Sports.png"},

    {"Place": "River Rafting", "Rating": "5.0", "image": "assets/kerala/rafting.jpg"},

    {
      "Place": "Bamboo Rafting",
      "Rating": "5.0",
      "image": "assets/kerala/bomboo rafting.jpg"
    },
    {
      "Place": "Scuba Diving and Snorkeling",
      "Rating": "5.0",
      "image": "assets/kerala/Scuba-Diving-in-kerla.jpg"
    },
    {
      "Place": "Kayaking and Canoeing",
      "Rating": "5.0",
      "image": "assets/kerala/watersports-kayaking-kerala-4.jpg"
    },
  ];
  List<Map<String, dynamic>> airAdv = [
    {"Place": "Paragliding", "Rating": "5.0", "image": "assets/kerala/Vagamon-Paragliding.jpg"},

    {"Place": "Zip-lining", "Rating": "5.0", "image": "assets/kerala/zip.jpg"},

    {
      "Place": "Bamboo Rafting",
      "Rating": "5.0",
      "image": "assets/kerala/bomboo rafting.jpg"
    },
    {
      "Place": "Scuba Diving and Snorkeling",
      "Rating": "5.0",
      "image": "assets/kerala/Scuba-Diving-in-kerla.jpg"
    },
    {
      "Place": "Kayaking and Canoeing",
      "Rating": "5.0",
      "image": "assets/kerala/watersports-kayaking-kerala-4.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(
            children: [
              Opacity(
                opacity: 0.9,
                child: Image.asset(
                  "assets/kerala/kerlaAdv.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                left: 10,
                top: 30,
                child: SizedBox(
                  width: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Adventure Places in Kerala",
                        style: TextStyle(
                          fontFamily: "myFontFirst",
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: appBlack,
                                blurRadius: 5,
                                offset: Offset(2.0, 2.5))
                          ],
                        ),
                      ),
                      Text(
                        "Kerala offers a wide range of adventure activities that cater to different interests and thrill levels",
                        style: TextStyle(
                          fontFamily: "myFontFirst",
                          fontSize: 20,
                          color: appWhite,
                          shadows: [
                            Shadow(
                                color: appBlack,
                                blurRadius: 5,
                                offset: Offset(2.0, 2.5))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Land Adventures
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Land Adventures",
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
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                  itemCount: landAdv.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // here we call placeCard
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: PlaceCard(
                        place: landAdv[index]["Place"],
                        rating: landAdv[index]["Rating"],
                        placeImage: landAdv[index]["image"],
                        icon: const Icon(
                          Icons.landscape,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                    );
                  }),
            ),
          ),

          // Water Adventures
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Water Adventures",
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
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                  itemCount: waterAdv.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // here we call placeCard
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: PlaceCard(
                        place: waterAdv[index]["Place"],
                        rating: waterAdv[index]["Rating"],
                        placeImage: waterAdv[index]["image"],
                        icon: const Icon(
                          Icons.landscape,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                    );
                  }),
            ),
          ) ,


          // Air Adventures
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Air Adventures",
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
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                  itemCount: airAdv.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // here we call placeCard
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: PlaceCard(
                        place: airAdv[index]["Place"],
                        rating: airAdv[index]["Rating"],
                        placeImage: airAdv[index]["image"],
                        icon: const Icon(
                          Icons.landscape,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                    );
                  }),
            ),
          ) ,
        ]),
      ),
    );
  }
}
