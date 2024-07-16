import 'package:explore_world/colors.dart';
import 'package:explore_world/widgets/place_Card.dart';
import 'package:flutter/material.dart';

class Beachscreen extends StatefulWidget {
  const Beachscreen({super.key});

  @override
  State<Beachscreen> createState() => _BeachscreenState();
}

class _BeachscreenState extends State<Beachscreen> {
  List<Map<String, dynamic>> beach = [
    {"Place": "Kovalam", "Rating": "5.0", "image": "assets/kerala/kovalam.jpg"},
    {"Place": "Samudra ", "Rating": "5.0", "image": "assets/kerala/samudra_beach.jpg"},
    {"Place": "Kochi", "Rating": "5.0", "image": "assets/kerala/kochib.jpeg"},
    {"Place": "Kozhikode", "Rating": "5.0", "image": "assets/kerala/Kozhikode.jpeg"},
    {"Place": "Kannur", "Rating": "5.0", "image": "assets/kerala/Kannur.jpeg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          Stack(
            children: [
              Opacity(
                opacity: 0.9,
                child: Image.asset(
                  "assets/kerala/bannerB.jpg",
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
                        "Beach in Kerala",
                        style: TextStyle(
                          fontFamily: "myFontFirst",
                          fontSize: 40,
                          shadows: [
                            Shadow(
                                color: appBlack,
                                blurRadius: 5,
                                offset: Offset(2.0, 2.5))
                          ],
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Kerala’s beaches are a haven for those seeking a mix of relaxation, adventure, and cultural experiences.",
                        style: TextStyle(
                            fontFamily: "myFontFirst",
                            fontSize: 25,
                            shadows: [
                              Shadow(
                                  color: appBlack,
                                  blurRadius: 5,
                                  offset: Offset(2.0, 2.5))
                            ],
                            color: appWhite),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Beaches",
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
            height: 15,
          ),
          SizedBox(
            height: 350,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                itemCount: beach.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // here we call PlaceCard
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: PlaceCard(
                      place: beach[index]["Place"],
                      rating: beach[index]["Rating"],
                      placeImage: beach[index]["image"],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
