import 'package:flutter/material.dart';
import 'package:foodpanda_app/Dashboard/splash_screens.dart';
import 'package:foodpanda_app/Dashboard/welcome_screens.dart';

import 'constants/colors.dart';
import 'constants/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Panda Clone',
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primarySwatch: MyColors.navy,
          brightness: Brightness.light,
          scaffoldBackgroundColor: const Color(0xfffcfcfc),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: .2,
          titleTextStyle:  TextStyle(fontFamily: Bold , color: Color(0xff323232)),
          iconTheme: IconThemeData(color: MyColors.primaryColor)
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          primarySwatch: MyColors.navy,
          scaffoldBackgroundColor: const Color(0xfffcfcfc),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: .2,
              titleTextStyle:  TextStyle(fontFamily: Bold , color: Color(0xff323232)),
              iconTheme: IconThemeData(color: MyColors.primaryColor)
          )
      ),
     home: const SplashScreen(),
    );
  }
}

