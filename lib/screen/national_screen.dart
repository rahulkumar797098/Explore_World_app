import 'package:explore_world/colors.dart';
import 'package:explore_world/screen/all_state/kerla/kerala_home_screen.dart';
import 'package:explore_world/widgets/commanCard.dart';
import 'package:explore_world/widgets/search.dart';
import 'package:flutter/material.dart';

class NationalScreen extends StatefulWidget {
  const NationalScreen({super.key});

  @override
  State<NationalScreen> createState() => _NationalScreenState();
}

class _NationalScreenState extends State<NationalScreen> {
  @override
  Widget build(BuildContext context) {
    // State Data
    List<Map<String, dynamic>> state = [
      {
        "title": "Kerala",
        "total": "11 Million",
        "image": "assets/state/kerla.jpg",
        "rat": "4.5"
      },
      {
        "title": "Rajasthan",
        "total": "12 Million",
        "image": "assets/state/rajasthan.jpg",
        "rat": "4.5"
      },
      {
        "title": "Tamil Nadu",
        "total": "21 Million",
        "image": "assets/state/tamilnadu.webp",
        "rat": "4.5"
      },
      {
        "title": "Maharashtra",
        "total": "17 Million",
        "image": "assets/state/maharashtra.jpg",
        "rat": "4.5"
      },
      {
        "title": "Karnataka",
        "total": "12 Million",
        "image": "assets/state/karnatak.jpg",
        "rat": "4.5"
      },
      {
        "title": "Delhi",
        "total": "11 Million",
        "image": "assets/state/Delhi.jpg",
        "rat": "4.5"
      },
      {
        "title": "Himachal Pradesh ",
        "total": "11 Million",
        "image": "assets/state/himachal.jpg",
        "rat": "4.5"
      },
      {
        "title": "Goa",
        "total": "10 Million",
        "image": "assets/state/goa1.jpg",
        "rat": "4.5"
      },
      {
        "title": "West Bengal",
        "total": "9 Million",
        "image": "assets/state/WestBengal.jpg",
        "rat": "4.5"
      },
      {
        "title": "Uttarakhand",
        "total": "9 Million",
        "image": "assets/state/utrakhand.jpg",
        "rat": "4.5"
      },
      {
        "title": "Uttar Pradesh",
        "total": "9 Million",
        "image": "assets/state/Uttar Pradesh.webp",
        "rat": "4.5"
      },
      {
        "title": "Jammu & Kashmir",
        "total": "9 Million",
        "image": "assets/state/Jammu & Kashmir.jpg",
        "rat": "4.5"
      },
      {
        "title": "Gujarat",
        "total": "8 Million",
        "image": "assets/state/gujrat.webp",
        "rat": "4.5"
      },
      {
        "title": "Andhra Pradesh",
        "total": "7 Million",
        "image": "assets/state/Andhra Pradesh.jpg",
        "rat": "4.5"
      },
      {
        "title": "Madhya Pradesh",
        "total": "7 Million",
        "image": "assets/state/Madhya Pradesh.jpg",
        "rat": "4.5"
      },
      {
        "title": "Punjab",
        "total": "6 Million",
        "image": "assets/state/punjab.webp",
        "rat": "4.5"
      },
      {
        "title": "Odisha",
        "total": "6 Million",
        "image": "assets/state/odisa.jpg",
        "rat": "4.5"
      },
      {
        "title": "Haryana",
        "total": "5 Million",
        "image": "assets/state/Haryana1.jpg",
        "rat": "4.5"
      },
      {
        "title": "Telangana",
        "total": "5 Million",
        "image": "assets/state/Telangana.jpg",
        "rat": "4.5"
      },
      {
        "title": "Haryana ",
        "total": "5 Million",
        "image": "assets/state/Haryana1.jpg",
        "rat": "4.5"
      },
      {
        "title": "Assam",
        "total": "5 Million",
        "image": "assets/state/assam.jpg",
        "rat": "4.5"
      },
      {
        "title": "Jharkhand",
        "total": "4 Million",
        "image": "assets/state/jha.jpeg",
        "rat": "4.5"
      },
      {
        "title": "Bihar",
        "total": "3 Million",
        "image": "assets/state/bihar.jpg",
        "rat": "4.5"
      },
      {
        "title": "Chhattisgarh",
        "total": "3 Million",
        "image": "assets/state/Chhattisgarh.webp",
        "rat": "4.5"
      },
      {
        "title": "Tripura",
        "total": "2 Million",
        "image": "assets/state/tripura.jpg",
        "rat": "4.5"
      },
      {
        "title": "Nagaland",
        "total": "5 Lakh",
        "image": "assets/state/Nagaland.jpg",
        "rat": "4.5"
      },
      {
        "title": "Meghalaya",
        "total": "5 Lakh",
        "image": "assets/state/Meghalaya.jpg",
        "rat": "4.5"
      },
      {
        "title": "Arunachal Pradesh",
        "total": "5 Lakh",
        "image": "assets/state/arunachal.webp",
        "rat": "4.5"
      },
      {
        "title": "Mizoram",
        "total": "4 Lakh",
        "image": "assets/state/Mizoram.webp",
        "rat": "4.5"
      },
      {
        "title": "Sikkim",
        "total": "4 Lakh",
        "image": "assets/state/Sikkim.jpg",
        "rat": "4.5"
      },
      {
        "title": "Manipur",
        "total": "3 Lakh",
        "image": "assets/state/manipur.jpg",
        "rat": "4.5"
      },
    ];
    List<Map<String, dynamic>> union = [
      {
        "title": "Chandigarh",
        "total": "5 Million",
        "image": "assets/union/Chandigarh.jpg",
        "rat": "4.5"
      },
      {
        "title": "Puducherry",
        "total": "4 Million",
        "image": "assets/union/Puducherry.jpg",
        "rat": "4.5"
      },
      {
        "title": "Andaman & Nicobar",
        "total": "2 Million",
        "image": "assets/union/Andaman and Nicobar Islands.jpg",
        "rat": "4.5"
      },
      {
        "title": "Lakshadweep",
        "total": "50.0k",
        "image": "assets/union/Lakshadweep.jpg",
        "rat": "4.5"
      },
      {
        "title": "Delhi",
        "total": "35 Million",
        "image": "assets/union/Delhi2.jpg",
        "rat": "4.5"
      },
      {
        "title": "Dadra&N.H,Daman & Diu ",
        "total": "2 Million",
        "image": "assets/union/Dadra and Nagar Haveli and Daman and Diu.jpeg",
        "rat": "4.5"
      },
      {
        "title": "Jammu & Kashmir",
        "total": "28 Million",
        "image": "assets/union/Jammu & Kashmir2.jpg",
        "rat": "4.5"
      },
      {
        "title": "Ladakh",
        "total": "2 Million",
        "image": "assets/union/Ladakh.jpeg",
        "rat": "4.5"
      },
    ];

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Search(),
              const SizedBox(
                height: 10,
              ),
              // State
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "State",
                      style: TextStyle(fontFamily: "myFontFirst", fontSize: 30),
                    ),
                    Text("See All",
                        style: TextStyle(
                            fontFamily: "myFontFirst",
                            fontSize: 20,
                            color: appBlue)),
                  ],
                ),
              ),
          
              // State
              SizedBox(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: (){
                          if(state[index]["title"] == "Kerala"){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>KeralaHomeScreen()));
                          }

                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: CommenCard(
                            image: state[index]["image"],
                            state: state[index]["title"],
                            total: state[index]["total"],
                            rating: state[index]["rat"],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
          
              const SizedBox(
                height: 10,
              ),
          
              //   union
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Union Territories",
                      style: TextStyle(fontFamily: "myFontFirst", fontSize: 30),
                    ),
                    Text("See All",
                        style: TextStyle(
                            fontFamily: "myFontFirst",
                            fontSize: 20,
                            color: appBlue)),
                  ],
                ),
              ),
              SizedBox(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: union.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: CommenCard(
                          image: union[index]["image"],
                          state: union[index]["title"],
                          total: union[index]["total"],
                          rating: union[index]["rat"],
                        ),
                      );
                    },
                  ),
                ),
              ),
          
          
            ],
          ),
        ),
      ),
    );
  }
}
