import 'package:explore_world/widgets/foodCard.dart';
import 'package:flutter/material.dart';
import '../../../colors.dart';

class Foodscreen extends StatefulWidget {
  const Foodscreen({super.key});

  @override
  State<Foodscreen> createState() => _FoodscreenState();
}

class _FoodscreenState extends State<Foodscreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> food = [
      {
        "food": "Appam",
        "image": "assets/kerala/appamF1.jpg",
        "price": " ₹60 - ₹150",
        "des":
            "Appam is a type of pancake made from fermented rice batter and coconut milk, known for its soft, spongy center and crispy edges. It is often paired with Ishtu, a mild and creamy stew made with vegetables or meat, coconut milk, and spices.",
        "rating": "★★★★★(4.8/5)"
      },
      {
        "food": "Puttu and Kadala Curry",
        "image": "assets/kerala/puttu.webp",
        "price": " ₹50 - ₹120",
        "des":
            "Puttu is a cylindrical steamed rice cake layered with coconut. It is typically served with Kadala Curry, a spicy black chickpea curry cooked with roasted coconut, onions, and a blend of aromatic spices.",
        "rating": "★★★★☆ (4.5/5)"
      },
      {
        "food": "Sadya",
        "image": "assets/kerala/Sadhya_DSW.jpg",
        "price": "₹200 - ₹500",
        "des":
            "Sadya is a traditional vegetarian feast served on a banana leaf, typically during festivals and special occasions. It consists of a variety of dishes, each contributing to a harmonious blend of flavors and textures.",
        "rating": "★★★★★ (4.7/5)"
      },
      {
        "food": "Karimeen Pollichathu",
        "image": "assets/kerala/karimeen.webp",
        "price": "₹250 - ₹400",
        "des":
            "Karimeen (Pearl Spot Fish) Pollichathu is a signature Kerala dish where the fish is marinated with spices, wrapped in banana leaves, and grilled to perfection.",
        "rating": "★★★★☆ (4.4/5)"
      },
      {
        "food": "Malabar Parotta with Beef",
        "image": "assets/kerala/Malabar Parotta with Kerala Beef Fry.jpg",
        "price": "₹150 - ₹300",
        "des":
            "Malabar Parotta is a flaky, layered flatbread made from maida (refined flour). It is often paired with Kerala Beef Fry, a spicy and flavorful beef dish cooked with coconut slices, curry leaves, and a blend of spices.",
        "rating": "★★★★☆ (4.4/5)"
      },
      {
        "food": "Palada Payasam",
        "image": "assets/kerala/Palada Payasam.jpg",
        "price": "₹100 - ₹200",
        "des":
            "Palada Payasam is a creamy and delicious rice pudding made with palada (rice ada), milk, and sugar. It is flavored with cardamom and garnished with fried cashews and raisins.",
        "rating": "★★★★☆ (4.4/5)"
      },
      {
        "food": "Erissery",
        "image": "assets/kerala/Erissery.jpg",
        "price": "₹60 - ₹120",
        "des":
            "Erissery is a traditional Kerala dish made with pumpkin, coconut, and a variety of spices. It is often garnished with roasted coconut and is an integral part of the Sadya.",
        "rating": "★★★★☆ (4.4/5)"
      },
      {
        "food": "Nadan Kozhi Varuthathu",
        "image":
            "assets/kerala/Nadan Kozhi Varuthathu (Kerala Chicken Fry).jpg",
        "price": " ₹60 - ₹150",
        "des":
            "Nadan Kozhi Varuthathu is a spicy and crispy chicken fry that is marinated with a blend of traditional Kerala spices and deep-fried.",
        "rating": "★★★★☆ (4.4/5)"
      },
      {
        "food": "Kappa and Meen Curry",
        "image": "assets/kerala/Kappa and Meen Curry.jpg",
        "price": "₹100 - ₹200",
        "des":
            "Kappa (tapioca) is often paired with Meen Curry (fish curry) in Kerala. The tapioca is usually boiled and mashed, and the fish curry is made with a tangy and spicy coconut-based gravy.",
        "rating": "★★★★☆ (4.4/5)"
      },
      {
        "food": "Pathiri with Chicken Curry",
        "image": "assets/kerala/Pathiri with Chicken Curry.jpg",
        "price": "₹100 - ₹200",
        "des":
            "Pathiri is a thin rice flatbread that is typically served with a spicy chicken curry. It is a popular dish in the Malabar region of Kerala.",
        "rating": "★★★★☆ (4.4/5)"
      },
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Stack(
              children: [
                Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    "assets/kerala/foodB.jpeg",
                    height: 350,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  left: 10,
                  top: 30,
                  child: SizedBox(
                    width: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Famous Food in Kerala",
                          style: TextStyle(
                            fontFamily: "myFontFirst",
                            fontSize: 40,
                            shadows: [
                              Shadow(
                                color: appBlack,
                                blurRadius: 5,
                                offset: Offset(2.0, 2.5),
                              ),
                            ],
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Kerala's food is not just about satisfying hunger; it's about celebrating life, heritage, and the joy of sharing meals with loved ones.",
                          style: TextStyle(
                            fontFamily: "myFontFirst",
                            fontSize: 25,
                            shadows: [
                              Shadow(
                                color: appBlack,
                                blurRadius: 5,
                                offset: Offset(2.0, 2.5),
                              ),
                            ],
                            color: appWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Famous Food List",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "myFontCu",
                fontSize: 25,
              ),
            ),
            // List View
            ListView.builder(
              itemCount: food.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return FoodCart(
                    foodName: food[index]["food"],
                    price: food[index]["price"],
                    des: food[index]["des"],
                    image: food[index]["image"],
                    rating: food[index]["rating"]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
