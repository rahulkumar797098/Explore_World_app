import 'package:explore_world/colors.dart';
import 'package:explore_world/screen/login_and_signup/login_screen.dart';
import 'package:explore_world/service/auth_service.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isVisible = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController = TextEditingController();

  final AuthService _authService = AuthService();

  // Signup function
  Future<void> _signUp() async {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmController.text.trim();

    // Check if passwords match
    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Passwords do not match")),
      );
      return;
    }

    // Call sign up method from AuthService
    final result = await _authService.signUp(email, password);

    // Navigate to LoginScreen on success or show error message
    if (result != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Sign Up Failed")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: appColor,
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(150)),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 60,
                    left: 100,
                    child: SizedBox(
                      height: 400,
                      width: 300,
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/icon/location.png",
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Sign Up to Unlock Your Travel Experiences",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: appWhite,
                              fontFamily: "myFontFirst",
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  blurRadius: 7,
                                  offset: Offset(3.0, 3.3),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Name
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: textFieldColor,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: appDeep),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  label: const Text(
                    "Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: "myFontFirst",
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.account_circle_outlined,
                    size: 30,
                    color: appWhite,
                  ),
                ),
              ),
            ),

            // Email
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: textFieldColor,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: appDeep),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  label: const Text(
                    "Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: "myFontFirst",
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    size: 30,
                    color: appWhite,
                  ),
                ),
              ),
            ),

            // Password
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passwordController,
                obscureText: !isVisible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: textFieldColor,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: appDeep),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  label: const Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: "myFontFirst",
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.key,
                    size: 30,
                    color: appWhite,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                        isVisible ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                  ),
                ),
              ),
            ),

            // Confirm Password
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: confirmController,
                obscureText: !isVisible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: textFieldColor,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: appDeep),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  label: const Text(
                    "Confirm Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      fontFamily: "myFontFirst",
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.key,
                    size: 30,
                    color: appWhite,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: Icon(
                        isVisible ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Sign Up and Social Media Buttons
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: appLight,
                  borderRadius:
                  BorderRadius.only(topRight: Radius.circular(150)),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: "myFontFirst",
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: _signUp,
                              style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(vertical: 14),
                                child: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const SizedBox(height: 20),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Positioned(
                      left: 0,
                      top: 80,
                      child: SizedBox(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/icon/facebook.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/icon/googleicon.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/icon/instagram.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      right: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "You have an account?",
                            style: TextStyle(
                              color: Color(0xff5e5d5d),
                              fontFamily: "myFontFirst",
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(width: 2, color: appWhite),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: textFieldColor,
                                shadows: [
                                  Shadow(
                                    color: appBlack,
                                    blurRadius: 2,
                                    offset: Offset(2.0, 2.0),
                                  ),
                                ],
                                fontSize: 20,
                                fontFamily: "myFontFirst",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
