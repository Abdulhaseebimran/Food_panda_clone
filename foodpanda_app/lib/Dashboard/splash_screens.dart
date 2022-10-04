import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_app/Dashboard/welcome_screens.dart';

import '../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3),
            ()=> Navigator.push(
            context, MaterialPageRoute(builder: (context) => const WelcomeScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body:Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/splash.png')
              )
            ),
          ),
          const Positioned(
              bottom: 50 ,
              child: CupertinoActivityIndicator(color: Colors.white,))
        ],
      ),
    );
  }
}