import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {


  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/icon/spIcon.png",
                height: 200,
                width: 200,
              )),
          const Text(
            "Explore World",
            style: TextStyle(
                fontFamily: "myFontFirst",
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

//    List<Map<String , dynamic>> support = [
//       {"icon" : Icons.email_outlined , "title" : "Email" , "subTitle" : "rkrahulroy151617@gmail.com" },
//       {"icon" : Icons.phone , "title" : "Phone" , "subTitle" : "7970989057" },
//     ];