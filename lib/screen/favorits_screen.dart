import 'package:explore_world/colors.dart';
import 'package:explore_world/widgets/favoriteCard.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> favData = [
      {
        "placeName": "Taj Mahal, Agra",
        "country": "India",
        "image": "assets/favorite/tajmahal.jpeg",
        "rating": "★★★★☆"
      } ,

      {
        "placeName": "Cape Town ",
        "country": "South Africa",
        "image": "assets/favorite/Cape Town.jpeg",
        "rating": "★★★★☆"
      } ,

      {
        "placeName": "Tokyo",
        "country": "Japan",
        "image": "assets/favorite/tokyo.jpeg",
        "rating": "★★★★☆"
      } ,

      {
        "placeName": "Sydney",
        "country": "Australia",
        "image": "assets/favorite/sydney.jpeg",
        "rating": "★★★★☆"
      },



      {
        "placeName": "Rio de Janeiro",
        "country": " Brazil",
        "image": "assets/favorite/rio de.jpeg",
        "rating": "★★★★☆"
      } ,
      {
        "placeName": "London,",
        "country": "England",
        "image": "assets/favorite/London.jpeg",
        "rating": "★★★★☆"
      } ,

    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My favorite destination",
          style: TextStyle(fontSize: 20, fontFamily: "myFontFirst"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Next Destination",
              style: TextStyle(fontFamily: "myFontCu", fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: favData.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  // Here we call favoriteCard
                  return Favoritecard(
                      placeName: favData[index]["placeName"],
                      country: favData[index]["country"],
                      rating: favData[index]["rating"],
                      image: favData[index]["image"]
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
