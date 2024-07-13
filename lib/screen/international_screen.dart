import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InternationalScreen extends StatefulWidget {
  const InternationalScreen({super.key});

  @override
  State<InternationalScreen> createState() => _InternationalScreenState();
}

class _InternationalScreenState extends State<InternationalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("International"),
      ),

    );
  }
}
