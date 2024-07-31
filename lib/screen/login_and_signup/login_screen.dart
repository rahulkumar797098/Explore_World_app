import 'package:explore_world/colors.dart';
import 'package:explore_world/screen/bottom_navigation_screen.dart';
import 'package:explore_world/screen/login_and_signup/signup_screen.dart';
import 'package:explore_world/service/auth_service.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService _authService = AuthService(); // Replace with your authentication service

  Future<void> _login() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    // Authenticate user
    final result = await _authService.login(email, password);

    if (result != null) {
      // Navigate to BottomNavigationScreen on success
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavigationScreen()),
      );
    } else {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Login Failed")),
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
                  BorderRadius.only(bottomLeft: Radius.circular(150))),
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
                            "assets/icon/tourist.png",
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Access Your \nAdventure with Login",
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
            const SizedBox(height: 40),

            // Email Box
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
            const SizedBox(height: 10),

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
                      isVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(
                      "Remember Me",
                      style: TextStyle(
                        fontFamily: "myFontFirst",
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      fontFamily: "myFontFirst",
                      fontSize: 18,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              height: 350,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: appLight,
                  borderRadius:
                  BorderRadius.only(topRight: Radius.circular(150))),
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    left: 0,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: _login,
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
                              "Login",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: "myFontFirst",
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed:_login,
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
                  ),
                  Positioned(
                    top: 130,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                            color: Color(0xff5e5d5d),
                            fontFamily: "myFontFirst",
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(width: 2, color: appWhite),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Sign up",
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
          ],
        ),
      ),
    );
  }
}
