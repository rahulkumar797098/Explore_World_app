import 'package:flutter/material.dart';
import 'package:explore_world/colors.dart'; // Ensure this import path is correct and contains the color definitions

import '../../beach_screen_main.dart';
import 'adventureScreen.dart';
import 'beachScreen.dart';
import 'foodScreen.dart';
import 'heritageScreen.dart';
import 'mostLovedPlace.dart';
import 'museumsScreen.dart';
import 'partAndNight.dart';
import 'romanticScreen.dart';
import 'shoppingScreen.dart';
import 'villageScreen.dart';

class KeralaHomeScreen extends StatefulWidget {
  const KeralaHomeScreen({super.key});

  @override
  State<KeralaHomeScreen> createState() => _KeralaHomeScreenState();
}

class _KeralaHomeScreenState extends State<KeralaHomeScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Your Destination Kerala",
            style: TextStyle(fontFamily: "myFontCu"),
          ),
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: appDeep,
            labelColor: appDeep,
            unselectedLabelColor: Color(0xff535353),
            tabs: [
              Tab(text: "Most Loved Place"),
              Tab(text: "Adventure"),
              Tab(text: "Beach"),
              Tab(text: "Food"),
              Tab(text: "Romantic Place"),
              Tab(text: "Party and Nightlife"),
              Tab(text: "Shopping"),
              Tab(text: "Heritage"),
              Tab(text: "Museums"),
              Tab(text: "Village"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Mostlovedplace(),
            AdventureScreen(),
            Beachscreen(),
            Foodscreen(),
            Romanticscreen(),
            Partandnight(),
            Shoppingscreen(),
            Heritagescreen(),
            Museumsscreen(),
            Villagescreen(),
          ],
        ),
      ),
    );
  }
}
