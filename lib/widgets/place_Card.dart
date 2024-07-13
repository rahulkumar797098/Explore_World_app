import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

class PlaceCard extends StatefulWidget {
  final String place;
  final String rating;
  final String placeImage;
  final Icon? icon;

  PlaceCard({
    super.key,
    required this.place,
    required this.rating,
    required this.placeImage,
    this.icon = const Icon(Icons.location_on_sharp),
  });

  @override
  State<PlaceCard> createState() => _PlaceCardState();
}

class _PlaceCardState extends State<PlaceCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: appLight,
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(widget.placeImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Location And Rating
          Positioned(
            bottom: 5,
            left: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    widget.icon!,
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.place,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: "myFontFirst",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.orange,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.rating,
                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily: "myFontFirst",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Heart
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                color: appLight,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
              child: const Icon(
                Icons.favorite_border_rounded,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
