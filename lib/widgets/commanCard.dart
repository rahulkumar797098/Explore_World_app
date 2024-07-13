import 'package:flutter/material.dart';

import '../colors.dart';

class CommenCard extends StatelessWidget {
  final String image;
  final String state;
  final String total;
  final String rating;
  const CommenCard(
      {super.key,
      required this.image,
      required this.state,
      required this.total,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: appLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover))),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on_sharp,
                size: 30,
                color: Colors.red,
              ),
              Text(
                state,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "myFontFirst"),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SizedBox(
              width: 240,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/icon/addUser.png",
                          height: 25, width: 25, color: appDeep),
                      const SizedBox(width: 10),
                      Text(total,
                          style: const TextStyle(
                              fontFamily: "myFontFirst", fontSize: 16)),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange),
                      const SizedBox(width: 5),
                      Text(
                        rating,
                        style: const TextStyle(
                            fontSize: 16, fontFamily: "myFontFirst"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
