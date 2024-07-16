import 'package:explore_world/widgets/International_banner.dart';
import 'package:explore_world/widgets/search.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

class InternationalScreen extends StatefulWidget {
  const InternationalScreen({super.key});

  @override
  State<InternationalScreen> createState() => _InternationalScreenState();
}

class _InternationalScreenState extends State<InternationalScreen> {
  @override
  Widget build(BuildContext context) {

    List<Map<String , dynamic>> country = [
      {"name" : "France" , "image" : "assets/international/france.jpg" , "total" : "89 Million"},
      {"name" : "Spain" , "image" : "assets/international/spain.jpg" , "total" : "83 Million"},
      {"name" : "US" , "image" : "assets/international/us.jpg" , "total" : "80 Million"},
      {"name" : "Italy" , "image" : "assets/international/itlay.jpg" , "total" : "62 Million"},
      {"name" : "China" , "image" : "assets/international/china.webp" , "total" : "60 Million"},
      {"name" : "Turkey" , "image" : "assets/international/turkey.jpg" , "total" : "51 Million"},
      {"name" : "Germany" , "image" : "assets/international/germany.jpg" , "total" : "39 Million"},
      {"name" : "UK" , "image" : "assets/international/united-kingdom.jpg" , "total" : "38 Million"},
      {"name" : "Mexico" , "image" : "assets/international/mexico.jpg" , "total" : "37 Million"},
      {"name" : "Thailand" , "image" : "assets/international/thaland.jpg" , "total" : "35 Million"},
      {"name" : "Japan" , "image" : "assets/international/japan.webp" , "total" : "32 Million"},
      {"name" : "Greece" , "image" : "assets/international/greek.webp" , "total" : "31 Million"},

    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            // Search Call
            const Search(),
            const SizedBox(height: 15),
            // Banner Call
            const InternationalBanner(),
            const SizedBox(height: 15), // Add spacing between banner and grid

            // GridView
            GridView.builder(
              itemCount: country.length, // Adjust itemCount as needed
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3/3.3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  shadowColor: appLight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150, // Adjust height for image
                        width: double.infinity, // Fill the container width
                        decoration:  BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage(country[index]["image"]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: SizedBox(
                          width: double.infinity, // Ensure width takes up available space
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icon/world.png",
                                    height: 25,
                                    width: 25,
                                    color: Colors.blue,
                                  ),
                                  const SizedBox(width: 10),
                                   Text(
                                    country[index]["name"],
                                    style: const TextStyle(
                                      fontFamily: "myFontFirst",
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                               Padding(
                                 padding: const EdgeInsets.only(right: 8.0),
                                 child: Text(
                                  country[index]["total"],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontFamily: "myFontFirst",
                                  ),
                                                               ),
                               ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
