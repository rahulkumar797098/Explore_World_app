import 'package:carousel_slider/carousel_slider.dart';
import 'package:explore_world/colors.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> sliderItems = [
      // First
      Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "assets/icon/addUser.png",
                            color: appDeep,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "visited",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "myFontFirst",
                            color: appDeep),
                      ),
                    ],
                  ),
                  const Text("8 Million",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "myFontFirst",
                          color: Colors.red))
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    image: AssetImage("assets/image/goa.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Beaches and nightlife",
                    style: TextStyle(fontSize: 16, fontFamily: "myFontFirst"),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.orange,
                      ),
                      Text("4.8",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "myFontFirst"))
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    size: 16,
                    color: appDeep,
                  ),
                  Text("Goa , southwest India",
                      style: TextStyle(fontSize: 16, fontFamily: "myFontFirst"))
                ],
              ),
            ),
          ],
        ),
      ),
      // Second
      Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "assets/icon/addUser.png",
                            color: appDeep,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "visited",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "myFontFirst",
                            color: appDeep),
                      ),
                    ],
                  ),
                  const Text("5 Million",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "myFontFirst",
                          color: Colors.red))
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    image: AssetImage("assets/image/ladakh.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "natural beauty,adventure activities",
                    style: TextStyle(fontSize: 16, fontFamily: "myFontFirst"),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.orange,
                      ),
                      Text("4.9",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "myFontFirst"))
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    size: 16,
                    color: appDeep,
                  ),
                  Text("Ladakh , Jammu and Kashmir",
                      style: TextStyle(fontSize: 16, fontFamily: "myFontFirst"))
                ],
              ),
            ),
          ],
        ),
      ),
      Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "assets/icon/addUser.png",
                            color: appDeep,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "visited",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "myFontFirst",
                            color: appDeep),
                      ),
                    ],
                  ),
                  const Text("12 Million",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "myFontFirst",
                          color: Colors.red))
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    image: AssetImage("assets/image/kasmir.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Paradise on Earth",
                    style: TextStyle(fontSize: 16, fontFamily: "myFontFirst"),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.orange,
                      ),
                      Text("4.9",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "myFontFirst"))
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    size: 16,
                    color: appDeep,
                  ),
                  Text("Kashmir , northernmost geographical ",
                      style: TextStyle(fontSize: 16, fontFamily: "myFontFirst"))
                ],
              ),
            ),
          ],
        ),
      ),
      Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "assets/icon/addUser.png",
                            color: appDeep,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "visited",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "myFontFirst",
                            color: appDeep),
                      ),
                    ],
                  ),
                  const Text("30 Million",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "myFontFirst",
                          color: Colors.red))
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                    image: AssetImage("assets/image/manali.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "natural beauty,adventure activities",
                    style: TextStyle(fontSize: 16, fontFamily: "myFontFirst"),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.orange,
                      ),
                      Text("4.8",
                          style: TextStyle(
                              fontSize: 16, fontFamily: "myFontFirst"))
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    size: 16,
                    color: appDeep,
                  ),
                  Text("Manali,Himachal Pradesh",
                      style: TextStyle(fontSize: 16, fontFamily: "myFontFirst"))
                ],
              ),
            ),
          ],
        ),
      ),
    ];

    return CarouselSlider(
      items: sliderItems,
      options: CarouselOptions(
        height: 290,
        viewportFraction: 0.8, // Adjust to show next and previous images
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true, // Center image will be larger
        enlargeFactor: 0.3,
        onPageChanged: (index, reason) {},
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
