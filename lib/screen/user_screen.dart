import 'package:explore_world/widgets/complete_trip_card.dart';
import 'package:flutter/material.dart';
import 'package:explore_world/colors.dart';

import '../widgets/favoriteCard.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  List<Map<String, dynamic>> favData = [
    {
      "placeName": "Rio de Janeiro",
      "country": "Brazil",
      "image": "assets/favorite/rio de.jpeg",
      "rating": "★★★★☆"
    },
    {
      "placeName": "London",
      "country": "England",
      "image": "assets/favorite/London.jpeg",
      "rating": "★★★★☆"
    },
    {
      "placeName": "Tokyo",
      "country": "Japan",
      "image": "assets/favorite/tokyo.jpeg",
      "rating": "★★★★☆"
    },
    {
      "placeName": "Sydney",
      "country": "Australia",
      "image": "assets/favorite/sydney.jpeg",
      "rating": "★★★★☆"
    },
    {
      "placeName": "Rio de Janeiro",
      "country": "Brazil",
      "image": "assets/favorite/rio de.jpeg",
      "rating": "★★★★☆"
    },
    {
      "placeName": "London",
      "country": "England",
      "image": "assets/favorite/London.jpeg",
      "rating": "★★★★☆"
    },
  ];

  List<Map<String, dynamic>> compTri = [
    {
      "placeName": "Rishikesh",
      "country": "India",
      "image": "assets/favorite/ris.jpeg",
      "rating": "★★★★☆"
    },
    {
      "placeName": "Haridwar",
      "country": "India",
      "image": "assets/favorite/haridawar.jpg",
      "rating": "★★★★☆"
    },
    {
      "placeName": "Shimla",
      "country": "India",
      "image": "assets/favorite/shimal.jpg",
      "rating": "★★★★☆"
    },
    {
      "placeName": "Varanasi",
      "country": "India",
      "image": "assets/favorite/varanashi.jpeg",
      "rating": "★★★★☆"
    },
    {
      "placeName": "Rajgir",
      "country": "India",
      "image": "assets/favorite/rajgir.jpg",
      "rating": "★★★★☆"
    },
    {
      "placeName": "Bodh Gaya",
      "country": "India",
      "image": "assets/favorite/bhodh gaya.jpeg",
      "rating": "★★★★☆"
    },

  ];

  bool _isNextTripsExpanded = true;
  bool _isCompletedTripsExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Edit icon
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                      color: appVeryLight,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.edit),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // User Image
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: appDeep, blurRadius: 5, offset: Offset(1.0, 1.5))
                  ],
                  image: const DecorationImage(
                      image: AssetImage("assets/icon/devrahul.jpg"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hi",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "myFontFirst"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Rahul Kumar",
                  style: TextStyle(fontSize: 30, fontFamily: "myFontFirst"),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          size: 30,
                          color: Colors.red,
                        ),
                        Row(
                          children: [
                            Text(
                              "I am in ",
                              style: TextStyle(
                                  fontFamily: "myFontFirst",
                                  color: Colors.black54),
                            ),
                            Text(
                              "Punjab",
                              style: TextStyle(
                                  fontFamily: "myFontFirst",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black54)),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/icon/globe.png",
                          height: 30,
                          width: 30,
                        ),
                        const Row(
                          children: [
                            Text(
                              "16 ",
                              style: TextStyle(
                                fontFamily: "myFontFirst",
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text("Country",
                                style: TextStyle(
                                    fontFamily: "myFontFirst",
                                    color: Colors.black54)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black54)),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/icon/india.png",
                          height: 30,
                          width: 30,
                        ),
                        const Row(
                          children: [
                            Text(
                              "19 ",
                              style: TextStyle(
                                fontFamily: "myFontFirst",
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text("State",
                                style: TextStyle(
                                    fontFamily: "myFontFirst",
                                    color: Colors.black54)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            // Next Trips and Complete Trips
            const SizedBox(
              height: 30,
            ),

            // Next Trips
            SizedBox(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isNextTripsExpanded = !_isNextTripsExpanded;
                          _isCompletedTripsExpanded = false;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: appVeryLight,
                          border: Border.all(
                            color: _isNextTripsExpanded ? Colors.orange : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icon/run.png",
                              height: 30,
                              width: 30,
                              color: Colors.blue,
                            ),
                            const Text(
                              "Next Trips",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "myFontFirst"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Complete Trips
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isCompletedTripsExpanded = !_isCompletedTripsExpanded;
                          _isNextTripsExpanded = false;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: appVeryLight,
                          border: Border.all(
                            color: _isCompletedTripsExpanded ? Colors.orange : Colors.transparent,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icon/done.png",
                              height: 30,
                              width: 30,
                            ),
                            const Text(
                              "Completed Trips",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "myFontFirst"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Next Trips Details
            Visibility(
              visible: _isNextTripsExpanded,
              child: Column(
                children: favData.map((trip) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: Favoritecard(
                        placeName: trip["placeName"],
                        country: trip["country"],
                        rating: trip["rating"],
                        image: trip["image"],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            // Completed Trips Details
            Visibility(
              visible: _isCompletedTripsExpanded,
              child: Column(
                children: compTri.map((trip) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: CompleteTripCard(
                        placeName: trip["placeName"],
                        country: trip["country"],
                        rating: trip["rating"],
                        image: trip["image"],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
