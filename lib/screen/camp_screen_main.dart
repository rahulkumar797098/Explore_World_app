import 'package:explore_world/screen/beach_details_screen.dart';
import 'package:explore_world/widgets/main_Card.dart';
import 'package:explore_world/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class CampScreenMain extends StatefulWidget {
  const CampScreenMain({super.key});

  @override
  State<CampScreenMain> createState() => _CampScreenMainState();
}

class _CampScreenMainState extends State<CampScreenMain> {
  List<Map<String, dynamic>> beach = [
    {
      "place": "Rishikesh",
      "country": "India",
      "rating": "★★★★★",
      "image": "assets/camp/RISIcamping.jpg"
    },
    {
      "place": "Spiti Valley",
      "country": "India",
      "rating": "★★★★★",
      "image": "assets/camp/spiti-camping.jpg"
    },
  ];
  List<Map<String, dynamic>> recomm = [
    {
      "place": "Yellowstone",
      "country": "USA",
      "rating": "★★★★★",
      "image": "assets/camp/usacamping.jpeg"
    },
    {
      "place": "Banff",
      "country": "Canada",
      "rating": "★★★★★",
      "image": "assets/camp/Banff-Camping.jpg"
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
