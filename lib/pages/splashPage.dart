import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sneaker_app/pages/introPage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 4),(){
        // Navigator.push(context, MaterialPageRoute(builder: (context) =>introPage() ,));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade300,
      body: Center(child: Image.asset('assets/images/nike.png')),
    );
  }
}

