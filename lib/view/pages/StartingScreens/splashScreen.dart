import 'dart:async';

import 'package:flutter/material.dart';

import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/pages/StartingScreens/SkipAndNext.dart';

import '../../widgets/animatedImage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:3),
            ()=>Navigator.pushReplacement(context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) => SkipandNext(),
                transitionDuration: Duration(seconds: 0), // Set transition duration to zero
              ),

        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: AnimatedAppIcon(url: 'assets/launcher.png',),
          ),
        ));
  }
}











