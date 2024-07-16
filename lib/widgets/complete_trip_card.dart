import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class CompleteTripCard extends StatefulWidget {
  final String placeName;
  final String country;
  final String rating;
  final String image;

  const CompleteTripCard(
      {super.key,
      required this.placeName,
      required this.country,
      required this.rating,
      required this.image});

  @override
  State<CompleteTripCard> createState() => _CompleteTripCardState();
}

class _CompleteTripCardState extends State<CompleteTripCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 200,
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
                      bottomLeft: Radius.circular(10)),
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
                    const SizedBox(
                      height: 10,
                    ),
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
                      style:
                          const TextStyle(fontSize: 25, color: Colors.orange),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Row(
                        children: [
                          Icon(Icons.camera_alt_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Add Image",
                            style: TextStyle(
                                fontFamily: "myFontFirst",
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
