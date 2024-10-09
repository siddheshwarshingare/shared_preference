import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preference/home_screen.dart';
import 'package:shared_preference/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreeState();
}

class _SplashScreeState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashscreenDuration();
  }

//Splash screen duration time

  splashscreenDuration() {
    Timer(const Duration(seconds: 3), () {
      print("Yeah, this line is printed after 3 seconds");
      isLoggedIn();
    });
  }

// Here we are checking user is logged in or not

  isLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getString("username") != null &&
        prefs.getString("password") != null) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.infinity,
      color: Colors.pink,
    );
  }
}
