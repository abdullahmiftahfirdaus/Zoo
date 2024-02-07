import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String loadingString = 'Loading.....';
  Duration delayInterval = const Duration(milliseconds: 5000);

  @override
  void initState() {
    super.initState();
    goToHomePage(context, delayInterval);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/forest.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Lottie.asset('assets/raw/lion.json'),
    );
  }

  void goToHomePage(BuildContext context, Duration delayInterval) async {
    await Future.delayed(delayInterval);

    bool conditionIsMet = true;

    if (conditionIsMet) {
      Navigator.of(context).pushReplacementNamed('/zoo');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }
}
