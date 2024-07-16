import 'package:carousel_slider/carousel_slider.dart';
import 'package:explore_world/colors.dart';
import 'package:flutter/material.dart';

class InternationalBanner extends StatelessWidget {
  const InternationalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> sliderItems = [

      // First
      Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
            image: AssetImage("assets/international/banner1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
            image: AssetImage("assets/international/banner3.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image: const DecorationImage(
            image: AssetImage("assets/international/banner2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),

    ];

    return CarouselSlider(
      items: sliderItems,
      options: CarouselOptions(
        height: 100,
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
