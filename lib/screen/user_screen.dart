import 'package:explore_world/screen/user_update_screen.dart';
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
      backgroundColor:Color(0xffffffff),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            snap: true,

            backgroundColor: Colors.white,
            expandedHeight: 100.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const UserUpdateScreen()));
                    },
                    child: Container(
                      margin:const EdgeInsets.only(right: 10),
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          color: appVeryLight,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.edit , size: 20,),
                          SizedBox(width: 10,),
                          Text("Profile", style: TextStyle(fontFamily:"myFontFirst" ,fontSize: 20),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // User Image
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Container(
                        height: 130,
                        width: 130,
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
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Rahul Kumar",
                          style: TextStyle(fontSize: 30, fontFamily: "myFontFirst"),
                        ),
                        Row(
                          children: [
                            Image.asset("assets/icon/globe.png" , height: 20, width: 20,) ,
                            const SizedBox(width: 10,),
                            const Text("India" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold ),),

                          ],
                        ) ,
                        const Row(
                          children: [
                            Text("Age : " , style: TextStyle(fontSize:22, fontFamily: "myFontFirst")),
                            Text("22" , style: TextStyle(fontSize:22,fontWeight: FontWeight.bold , fontFamily: "myFontFirst")),
                          ],
                        )
                      ],
                    ),

                  ],
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 20),
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
                              "assets/icon/world_map.png",
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
                              "assets/icon/state.png",
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
                const SizedBox(height: 30),
                // Next Trips and Complete Trips
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
        ],
      ),
    );
  }
}



/*
title: Row(
mainAxisAlignment: MainAxisAlignment.end,
children: [
InkWell(
onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => UserUpdateScreen()));
},
child: Container(
height: 40,
width: 120,
decoration: BoxDecoration(
color: appVeryLight,
borderRadius: BorderRadius.circular(10)),
child: const Row(
mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Icon(Icons.edit),
SizedBox(width: 10,),
Text("Profile",style: TextStyle(fontFamily:"myFontFirst"),)

],
),
),
),
],

),*/
