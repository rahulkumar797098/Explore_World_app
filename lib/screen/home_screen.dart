import 'package:explore_world/screen/beach_screen_main.dart';
import 'package:explore_world/screen/camp_screen_main.dart';
import 'package:explore_world/screen/login_and_signup/login_screen.dart';
import 'package:explore_world/screen/mountain_screen_main.dart';
import 'package:explore_world/screen/support_screen.dart';
import 'package:explore_world/screen/user_screen.dart';
import 'package:explore_world/widgets/image_slider.dart';
import 'package:explore_world/widgets/search.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';



import '../colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> categories = [
    {"image": "assets/icon/beach.png", "title": "Beach"},
    {"image": "assets/icon/tent.png", "title": "Camp"},
    {"image": "assets/icon/mountains.png", "title": "Mountain"},
    {"image": "assets/icon/water.png", "title": "Water Fall"},
    {"image": "assets/icon/river.png", "title": "River"},
    {"image": "assets/icon/forest.png", "title": "Forest"},
    {"image": "assets/icon/coliseum.png", "title": "Historical"},
    {"image": "assets/icon/city2.png", "title": "City"},
    {"image": "assets/icon/ele.png", "title": "Zoo"},
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Image.asset("assets/icon/menu.png"),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            }
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => UserScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  image: const DecorationImage(
                    image: AssetImage("assets/icon/devrahul.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Destination Dreams",
                    style: TextStyle(fontSize: 30, fontFamily: "myFontCu"),
                  ),
                  Text(
                    "Turn your travel dreams into reality.",
                    style: TextStyle(fontSize: 22, fontFamily: "myFontFirst"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Search(),
              const SizedBox(height: 10),
              const ImageSlider(),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(fontFamily: "myFontFirst", fontSize: 30),
                    ),
                    Text("See All",
                      style: TextStyle(
                        fontFamily: "myFontFirst",
                        fontSize: 20,
                        color: appBlue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 140,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          if (categories[index]["title"] == "Beach") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const BeachScreenMain()),
                            );
                          } else if (categories[index]["title"] == "Camp") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const CampScreenMain()),
                            );
                          } else if (categories[index]["title"] == "Mountain") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>const MountainScreenMain()),
                            );
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: appMimLight,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  child: ClipOval(
                                    child: Image.asset(
                                      categories[index]["image"],
                                      fit: BoxFit.cover,
                                      width: 80,
                                      height: 80,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                categories[index]["title"],
                                style: const TextStyle(fontSize: 20, fontFamily: "myFontFirst"),
                              ),
                            ],
                          ),
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration:const BoxDecoration(
                color: appVeryLight ,
                boxShadow: [BoxShadow(color : appDeep , blurRadius: 5)]
              ) ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/icon/spIcon.png" , height: 100 , width: 100,),
                  const Text("Explore \nWorld" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , fontFamily: "myFontFirst"),)
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_circle , size: 30, color: Colors.orange,),
              title: const Text("Account" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.pop(context);
              },
            ) ,
            ListTile(
              leading: const Icon(Icons.history , size: 30,color: Colors.orange),
              title: const Text("Booking History" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.pop(context);
              },
            ) ,
            ListTile(
              leading: const Icon(Icons.card_membership , size: 30, color: Colors.orange),
              title: const Text("Membership" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.pop(context);
              },
            ) ,
            ListTile(
              leading: const Icon(Icons.account_balance_wallet_rounded , size: 30, color: Colors.orange),
              title: const Text("payment history" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.pop(context);
              },
            ) ,
            ListTile(
              leading: const Icon(Icons.schedule , size: 30, color: Colors.orange),
              title: const Text("Travel Schedule" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.pop(context);
              },
            ) ,
            ListTile(
              leading: const Icon(Icons.notifications , size: 30, color: Colors.orange),
              title: const Text("Notifications" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.pop(context);
              },
            ) ,
            ListTile(
              leading: const Icon(Icons.share , size: 30, color: Colors.orange ),
              title:const Text("Refer & Earn" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Share.share(
                  'Check out this amazing app: https://play.google.com/store/apps/details?id=com.yourapp.package',
                  subject: 'Explore World App',
                );
              },
            ) ,
            ListTile(
              leading:const Icon(Icons.settings , size: 30, color: Colors.orange),
              title: const Text("Setting" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.pop(context);
              },
            ) ,
            ListTile(
              leading:const Icon(Icons.live_help_rounded , size: 30, color: Colors.orange ),
              title:const Text("About" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.pop(context);
              },
            ) ,
            ListTile(
              leading:const Icon(Icons.support_agent_outlined , size: 30, color: Colors.orange),
              title:const Text("Support" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SupportScreen()));
              },
            ) ,
            ListTile(
              leading:const Icon(Icons.exit_to_app , size: 30, color: Colors.orange ),
              title:const Text("Exit" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.pop(context);
              },
            ) ,
            ListTile(
              leading:const Icon(Icons.logout , size: 30, color: Colors.orange),
              title:const Text("Logout" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));

              },
            )

            // Add more drawer items here
          ],
        ),
      ),
    );
  }
}
