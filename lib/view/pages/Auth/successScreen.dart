import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';

import '../../widgets/animatedImage.dart';
import '../../widgets/successNextButton.dart';


class successScreen extends StatefulWidget {
  const successScreen({super.key});

  @override
  State<successScreen> createState() => _successScreenState();
}

class _successScreenState extends State<successScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center ,
        children: [
          Text('Congratulations',style: GoogleFonts.roboto(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: whiteColor
          ),),
          height14,
          AnimatedAppIcon(url: 'assets/success.png',),
          height20,
          height20,
        successNextButton()
        ],
      ),
    );
  }
}
