import 'package:explore_world/colors.dart';
import 'package:explore_world/screen/home_screen.dart';
import 'package:explore_world/screen/search_Screen.dart';
import 'package:explore_world/screen/user_screen.dart';
import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorits_screen.dart';


class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentScreen = 0;

  final List<Widget> screens = [

    const HomeScreen(),
    const SearchScreen(),
    const CategoriesScreen(),
    const FavoritesScreen(),
    const UserScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: myBottomNav(context),
    );
  }

  myBottomNav(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: appDeep,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: appBlack,
            blurRadius: 7,
          ),
        ],
      ),
      // Bottom item
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavItem(0, "Home", "assets/icon/home.png"),
          buildNavItem(1, "Search", "assets/icon/search.png"),
          buildNavItem(2, "Categories", "assets/icon/categories.png", isFloating: true),
          buildNavItem(3, "Favorites", "assets/icon/heart.png"),
          buildNavItem(4, "Profile", "assets/icon/user.png"),
        ],
      ),
    );
  }


  // ........................... Custom widgets ....................//
  Widget buildNavItem(
      int index,
      String label,
      String iconPath,
      {bool isFloating = false}
      ) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          isFloating
              // Floating Action Button
              ? Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                ),
              ],
            ),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: () => _onItemTapped(index),
              child: Image.asset(
                iconPath,
                width: 40,
                height: 40,
              ),
            ),
          )
              : Image.asset(
            iconPath,
            width: 30,
            height: 30,
            color: currentScreen == index ? Colors.blue : Colors.white,
          ),
          if (!isFloating)
            Text(
              label,
              style: TextStyle(
                color: currentScreen == index ? Colors.blue : Colors.white,
                fontSize: 12,
              ),
            ),
        ],
      ),
    );
  }
}
