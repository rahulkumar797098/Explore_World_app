import 'package:explore_world/colors.dart';
import 'package:explore_world/widgets/place_Card.dart';
import 'package:flutter/material.dart';

class Mostlovedplace extends StatefulWidget {
  const Mostlovedplace({super.key});

  @override
  State<Mostlovedplace> createState() => _MostlovedplaceState();
}

class _MostlovedplaceState extends State<Mostlovedplace> {

  List<Map<String , dynamic>> mostLoved = [
    {"Place" : "Kochi" , "Rating" : "5.0" , "image" : "assets/kerala/kochi.jpeg"},
    {"Place" : "Kovalam" , "Rating" : "5.0" , "image" : "assets/kerala/kovalam.jpeg"},
    {"Place" : "Munnar" , "Rating" : "5.0" , "image" : "assets/kerala/munnar.jpeg"},
    {"Place" : "Thekkady" , "Rating" : "5.0" , "image" : "assets/kerala/thekkady.webp"},
    {"Place" : "Wayanad" , "Rating" : "5.0" , "image" : "assets/kerala/wayanad.jpeg"},
    {"Place" : "Thiruvananthapuram" , "Rating" : "5.0" , "image" : "assets/kerala/Thiruvananthapuram.jpeg"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // Header
        Stack(
          children: [
            Opacity(
              opacity: 0.9,
              child: Image.asset(
                "assets/state/kerla.jpg",
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
                      "Kerala",
                      style: TextStyle(
                        fontFamily: "myFontFirst",
                        fontSize: 50,
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
                      "is a state known for its unique cultural heritage, natural beauty, and high quality of life.",
                      style: TextStyle(
                          fontFamily: "myFontFirst",
                          fontSize: 25,
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
                "Most Loved",
                style: TextStyle(fontFamily: "myFontFirst", fontSize: 30),
              ),
              Text("See All",
                  style: TextStyle(
                      fontFamily: "myFontFirst", fontSize: 20, color: appBlue)),
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
                itemCount: mostLoved.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // here we call placeCard
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: PlaceCard(place: mostLoved[index]["Place"], rating: mostLoved[index]["Rating"] ,placeImage: mostLoved[index]["image"],),
                  );
                }),
          ),
        )
      ]),
    );
  }
}
