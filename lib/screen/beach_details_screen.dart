import 'package:flutter/material.dart';
import '../colors.dart';

class BeachDetailsScreen extends StatefulWidget {
  final String beachTitle;
  final String location;
  final String country;
  final String flightDet;
  final String cost;
  final String totalTourist;
  final String about;
  final String image ;

  const BeachDetailsScreen(
      {super.key,
      required this.location,
      required this.country,
      required this.flightDet,
      required this.cost,
      required this.totalTourist,
      required this.about,
      required this.beachTitle,
        required this.image});

  @override
  State<BeachDetailsScreen> createState() => _BeachDetailsScreenState();
}

class _BeachDetailsScreenState extends State<BeachDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.beachTitle,
          style: const TextStyle(
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
                            image:  DecorationImage(
                                image: AssetImage(widget.image),
                                fit: BoxFit.cover))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_sharp,
                          size: 20,
                          color: appDeep,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          widget.location,
                          style: const TextStyle(
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
                        Text(
                          widget.country,
                          style: const TextStyle(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.airplane_ticket_rounded,
                              size: 30,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              widget.flightDet,
                              style: const TextStyle(
                                fontFamily: "myFontFirst",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Cost Per Person : ${widget.cost} ",
                          style: const TextStyle(
                            fontFamily: "myFontFirst",
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "★★★★☆",
                          style: TextStyle(fontSize: 30, color: Colors.orange),
                        ),
                        Text(widget.totalTourist,
                            style: const TextStyle(
                                fontSize: 25,
                                color: Colors.red,
                                fontFamily: "myFontFirst"))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.about,
                      style: const TextStyle(
                          fontFamily: "myFontFirst", fontSize: 18),
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
                          side: const BorderSide(width: 2, color: appLight)),
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
                          side: const BorderSide(width: 2, color: appLight)),
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


//