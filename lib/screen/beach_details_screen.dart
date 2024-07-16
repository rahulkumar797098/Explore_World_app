import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class BeachDetailsScreen extends StatefulWidget {
  const BeachDetailsScreen({super.key});

  @override
  State<BeachDetailsScreen> createState() => _BeachDetailsScreenState();
}

class _BeachDetailsScreenState extends State<BeachDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Explore Bondi Beach",
          style: TextStyle(
              fontFamily: "myFontFirst",
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage("assets/beach/Bondi.jpg"),
                                fit: BoxFit.cover))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_sharp,
                          size: 20,
                          color: appDeep,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Bondi Beach, Sydney, New South Wales",
                          style: TextStyle(
                            fontFamily: "myFontFirst",
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icon/globe.png",
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          "Australia",
                          style: TextStyle(
                            fontFamily: "myFontFirst",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Transport Options",
                            style: TextStyle(
                                fontSize: 25, fontFamily: "myFontFirst")),
                        Icon(Icons.airplanemode_active_rounded)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.airplane_ticket_rounded,
                              size: 30,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Book flight from Indian to Sydney,Australia",
                              style: TextStyle(
                                fontFamily: "myFontFirst",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Cost Per Person : 1.5L ",
                          style: TextStyle(
                            fontFamily: "myFontFirst",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "★★★★☆",
                          style: TextStyle(fontSize: 30, color: Colors.orange),
                        ),
                        Text(" 2.6 million",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.red,
                                fontFamily: "myFontFirst"))
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Bondi Beach offers a perfect blend of surfing, sunbathing, and vibrant local culture. With its stunning coastal views, iconic surf scene, and lively atmosphere, it's a must-visit destination in Sydney. Whether you're here to catch waves, enjoy a scenic walk, or simply relax on the golden sands, Bondi Beach promises an unforgettable experience",
                      style: TextStyle(fontFamily: "myFontFirst", fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white, // optional: to match the background
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width: 2, color: appLight)),
                      backgroundColor: Colors.white,
                      foregroundColor: appDeep),
                  child: const Text(
                    "Direction",
                    style: TextStyle(
                      fontFamily: "myFontFirst",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(width: 2, color: appLight)),
                      backgroundColor: appDeep,
                      foregroundColor: Colors.white),
                  child: const Text(
                    "Book Now",
                    style: TextStyle(
                      fontFamily: "myFontFirst",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
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
