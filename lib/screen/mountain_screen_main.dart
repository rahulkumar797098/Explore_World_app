import 'package:explore_world/screen/beach_details_screen.dart';
import 'package:explore_world/widgets/main_Card.dart';
import 'package:explore_world/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class MountainScreenMain extends StatefulWidget {
  const MountainScreenMain({super.key});

  @override
  State<MountainScreenMain> createState() => _MountainScreenMainState();
}

class _MountainScreenMainState extends State<MountainScreenMain> {
  List<Map<String, dynamic>> beach = [
    {
      "place": "Mount Everest",
      "country": "Nepal",
      "rating": "★★★★★",
      "image": "assets/mountain/moun.jpg"
    },

    {
      "place": "Rocky Mountains",
      "country": "USA",
      "rating": "★★★★★",
      "image": "assets/mountain/Rocky Mountains.jpg"
    },
  ];
  List<Map<String, dynamic>> recomm = [
    {
      "place": "Swiss Alps",
      "country": "Switzerland",
      "rating": "★★★★★",
      "image": "assets/mountain/switzerland-mountains.jpg"
    },
    {
      "place": "Patagonia ",
      "country": "Argentina",
      "rating": "★★★★★",
      "image": "assets/mountain/Highlights-of-Patagonia.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Camping" , style: TextStyle(fontFamily: "myFontFirst"),),),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const  Search(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(fontFamily: "myFontFirst", fontSize: 30),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontFamily: "myFontFirst",
                    fontSize: 20,
                    color: appBlue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: beach.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 400, // Updated to a fixed width
                  child: MainCard(
                    placeName: beach[index]["place"],
                    country: beach[index]["country"],
                    rating: beach[index]["rating"],
                    image: beach[index]["image"],
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20,),

          // Recommended

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended",
                  style: TextStyle(fontFamily: "myFontFirst", fontSize: 30),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontFamily: "myFontFirst",
                    fontSize: 20,
                    color: appBlue,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recomm.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    if (recomm[index]["place"] == "Bondi") {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return BeachDetailsScreen();
                      }));

                    }
                  },
                  child: SizedBox(
                    width: 400, // Updated to a fixed width
                    child: MainCard(
                      placeName: recomm[index]["place"],
                      country: recomm[index]["country"],
                      rating: recomm[index]["rating"],
                      image: recomm[index]["image"],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
