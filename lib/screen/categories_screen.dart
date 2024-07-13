import 'package:explore_world/colors.dart';
import 'package:explore_world/screen/international_screen.dart';
import 'package:explore_world/screen/national_screen.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // number of tabs
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            dividerColor: appVeryLight,
            indicatorColor: appDeep,
            labelColor: appDeep,
            unselectedLabelColor: Color(0xff535353),
            automaticIndicatorColorAdjustment: true,
            tabs: [
              Tab(text: "National"),
              Tab(text: "International"),
            ],
          ),
          title: const Text('Dreams to Reality' , style: TextStyle(fontFamily: "myFontCu" , fontSize: 20),),
        ),
        body: const TabBarView(
          children: [NationalScreen(), InternationalScreen()],
        ),
      ),
    );
  }
}
