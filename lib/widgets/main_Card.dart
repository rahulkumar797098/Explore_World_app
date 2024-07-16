import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class MainCard extends StatefulWidget {
  final String placeName;
  final String country;
  final String rating;
  final String image;

  const MainCard({
    super.key,
    required this.placeName,
    required this.country,
    required this.rating,
    required this.image,
  });

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: appDeep),
            borderRadius: BorderRadius.circular(10),

          ),
          child: Card(
            elevation: 4,
            shadowColor: appLight,
            child: Stack(
              children: [
                // Image Part
                Container(
                  height: double.infinity,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Text Part
                Positioned(
                  top: 30,
                  left: 210,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_sharp,
                            size: 20,
                            color: appDeep,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            widget.placeName,
                            style: const TextStyle(
                              fontFamily: "myFontFirst",
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
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
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        widget.rating,
                        style: const TextStyle(fontSize: 25, color: Colors.orange),
                      ),
                    ],
                  ),
                ),
                // Heart Icon
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: appVeryLight,
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
