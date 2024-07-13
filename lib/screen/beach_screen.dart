import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeachScreen extends StatefulWidget {
  const BeachScreen({super.key});

  @override
  State<BeachScreen> createState() => _BeachScreenState();
}

class _BeachScreenState extends State<BeachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text("Beach"),
        ),
      ),
    );
  }
}
