import 'package:explore_world/screen/beach_details_screen.dart';
import 'package:explore_world/widgets/main_Card.dart';
import 'package:explore_world/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class BeachScreenMain extends StatefulWidget {
  const BeachScreenMain({super.key});

  @override
  State<BeachScreenMain> createState() => _BeachScreenMainState();
}

class _BeachScreenMainState extends State<BeachScreenMain> {
  List<Map<String, dynamic>> beach = [
    {
      "place": "Radhanagar",
      "country": "India",
      "rating": "★★★★★",
      "image": "assets/beach/radha.jpg"
    },
    {
      "place": "Palolem",
      "country": "India",
      "rating": "★★★★★",
      "image": "assets/beach/polam.webp"
    },
  ];
  List<Map<String, dynamic>> recomm = [
    {
      "place": "Bondi",
      "country": "Australia",
      "rating": "★★★★★",
      "image": "assets/beach/Bondi.jpg"
    },
    {
      "place": "Copacabana",
      "country": "Brazil",
      "rating": "★★★★★",
      "image": "assets/beach/Copacabana.webp"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Beach",
          style: TextStyle(fontFamily: "myFontFirst"),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Search(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(fontFamily: "myFontFirst", fontSize: 30),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontFamily: "myFontFirst",
                    fontSize: 20,
                    color: appBlue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: beach.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (beach[index]["place"] == "Radhanagar") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BeachDetailsScreen(
                              location: "Havelock Island(Radhanagar Beach)",
                              flightDet:
                                  "Take Flight From Your Location to Port Blair",
                              cost: "50K",
                              totalTourist: "2.0 lakh/year",
                              about:
                                  "Radhanagar Beach, located on Havelock Island in the Andaman and Nicobar Islands, is a true tropical paradise known for its pristine white sands, clear turquoise waters, and lush green surroundings. Its stunning natural beauty, combined with activities like swimming, snorkeling, scuba diving, and trekking, make it a must-visit destination for nature lovers and adventure enthusiasts alike.",
                              beachTitle: "Explore Radhanagar Beach",
                              image: 'assets/beach/radha.jpg',
                              country: 'India,Andaman and Nicobar Islands'),
                        ),
                      );
                    } else if (beach[index]["place"] == "Palolem") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => BeachDetailsScreen(
                                  location: "Palolem Beach, Goa, ",
                                  country: "India",
                                  flightDet: "Nearest airport is Dabolim Airport",
                                  cost: "30K",
                                  totalTourist: "1.5 Million",
                                  about: "Palolem is renowned for its pristine sandy beach lined with coconut palms and surrounded by scenic rocky outcrops. The clear blue waters and tranquil atmosphere make it a perfect getaway for relaxation.Visitors to Palolem Beach can enjoy a variety of activities such as swimming, sunbathing, and water sports like kayaking and boat trips. Yoga classes and wellness retreats are also popular options.",
                                  beachTitle: "Explore Palolem Beach",
                                  image: "assets/beach/polam.webp")));
                    }
                  },
                  child: SizedBox(
                    width: 400, // Updated to a fixed width
                    child: MainCard(
                      placeName: beach[index]["place"],
                      country: beach[index]["country"],
                      rating: beach[index]["rating"],
                      image: beach[index]["image"],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended",
                  style: TextStyle(fontFamily: "myFontFirst", fontSize: 30),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontFamily: "myFontFirst",
                    fontSize: 20,
                    color: appBlue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recomm.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    if (recomm[index]["place"] == "Bondi") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BeachDetailsScreen(
                            location: 'Bondi Beach, Sydney, New South Wales',
                            country: 'Australia',
                            flightDet:
                                'Book flight from Indian to Sydney, Australia',
                            cost: '1.5L',
                            totalTourist: '2.6 million',
                            about:
                                'Bondi Beach offers a perfect blend of surfing, sunbathing, and vibrant local culture. With its stunning coastal views, iconic surf scene, and lively atmosphere, it\'s a must-visit destination in Sydney. Whether you\'re here to catch waves, enjoy a scenic walk, or simply relax on the golden sands, Bondi Beach promises an unforgettable experience.',
                            beachTitle: 'Explore Bondi Beach',
                            image: 'assets/beach/Bondi.jpg',
                          ),
                        ),
                      );
                    } else if (recomm[index]["place"] == "Copacabana") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BeachDetailsScreen(
                            location: 'Copacabana Beach part of Rio de Janeiro',
                            country: 'Brazil',
                            flightDet:
                            'Nearest airport Tom Jobim International Airport.',
                            cost: '70K',
                            totalTourist: '1 Million',
                            about:
                            ' Copacabana Beach\'s scenic beauty, with its expansive sandy shores and lively oceanfront promenade, creates a captivating backdrop for relaxation and exploration.sunbathing and water sports to exploring local markets and enjoying nightlife, Copacabana offers a wealth of activities to suit every traveler\'s interests.',
                            beachTitle: 'Explore Copacabana Beach',
                            image: 'assets/beach/Copacabana.webp',
                          ),
                        ),
                      );
                    }
                  },
                  child: SizedBox(
                    width: 400, // Updated to a fixed width
                    child: MainCard(
                      placeName: recomm[index]["place"],
                      country: recomm[index]["country"],
                      rating: recomm[index]["rating"],
                      image: recomm[index]["image"],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
