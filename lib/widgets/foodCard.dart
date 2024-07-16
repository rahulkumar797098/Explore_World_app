import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class FoodCart extends StatefulWidget {

  final String foodName ;
  final String price ;
  final String des ;
  final String image ;
  final String rating ;
  const FoodCart({super.key, required this.foodName, required this.price, required this.des, required this.image, required this.rating});

  @override
  State<FoodCart> createState() => _FoodCartState();
}

class _FoodCartState extends State<FoodCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: 300,
        height: 580,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: appLight),
          color: appWhite,
          boxShadow: const [BoxShadow(color: appLight, blurRadius: 10)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(widget.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset("assets/kerala/foodIc.png", height: 40, width: 40),
                  const SizedBox(width: 10),
                  Text(
                    widget.foodName,
                    style: const TextStyle(fontSize: 25, fontFamily: "myFontFirst"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.currency_rupee,
                    size: 30,
                    color: Colors.deepOrangeAccent,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    widget.price,
                    style: const TextStyle(
                        fontFamily: "myFontFirst",
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                widget.des,
                style: const TextStyle(fontSize: 16, fontFamily: "myFontFirst"),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(child: Container()), // This will take up the remaining space
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 10.0),
                    child: Text(
                      widget.rating,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "myFontFirst",
                          fontSize: 25,
                          color: Colors.orange),
                    ),
                  ),
                  Container(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
