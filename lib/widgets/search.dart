import 'package:explore_world/colors.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search your destination',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: appVeryLight,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: appColor,
            shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
            ),
            child: Image.asset(
              "assets/icon/search.png",
              color: appWhite,
              height: 30,
              width: 30,
            ),
          )
        ],
      ),
    );
  }
}
