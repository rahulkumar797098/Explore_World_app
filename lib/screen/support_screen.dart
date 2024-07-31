import 'package:explore_world/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String , dynamic>> support = [
      {"icon" : Icons.email_outlined , "title" : "Email" , "subTitle" : "rkrahulroy151617@gmail.com" },
      {"icon" : Icons.phone , "title" : "Phone" , "subTitle" : "7970989057" },
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor:appLight,
        foregroundColor: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: const Icon(Icons.chat , size: 30, ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              "assets/icon/customer-service.png",
              height: 30,
              width: 30,
            ),
            const Text(
              "Customer Support",
              style: TextStyle(fontFamily: "myFontFirst", fontSize: 25),
            ),
          ],
        ),
      ),
      body: Column(
        children: [

          const SizedBox(height: 20,),
          Center(
              child: Image.asset(
            "assets/icon/24-hours.png",
            height: 200,
            width: 200,
          )),
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: const TextSpan(
                style: const TextStyle(color: Colors.black87, fontSize: 24),
                children: <TextSpan>[
                  TextSpan(
                      text: "24/7 ",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "myFontFirst",
                          fontWeight: FontWeight.w900 ,
                        color: Colors.red

                      )),
                  TextSpan(
                      text: "Customer ",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "myFontFirst",
                          )),
                  TextSpan(
                      text: "Support",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "myFontFirst",
                          fontWeight: FontWeight.bold,
                        color: Colors.blue
                      )),
                ]),
          ) , 
          
          const Padding(
            padding:EdgeInsets.symmetric(horizontal: 10.0 , vertical: 5),
            child: Text("We are here to help you! If you encounter any issues or have any questions, please do not hesitate to contact us. Our goal is to provide you with the best service and make your travel experience enjoyable." ,
              textAlign:TextAlign.center,
              style: TextStyle(fontSize: 18 , fontFamily: "myFontFirst" , ),
            ),
          ) ,

          ListView.builder(
            itemCount: support.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (Contex , index) {
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical: 5),
              child: SizedBox(
                height: 120,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  shadowColor: appDeep,
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height : 50 ,
                          width: 50,
                          decoration : BoxDecoration(
                            color: appVeryLight ,
                            borderRadius: BorderRadius.circular(15)

                                          ),
                            child: Icon(support[index]["icon"])),
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(support[index]["title"] ,
                          style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , fontFamily: "myFontFirst" , color: Colors.black54),),
                          Text( support[index]["subTitle"]  ,
                            style: const TextStyle(fontSize: 22 ,  fontFamily: "myFontFirst" ),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
