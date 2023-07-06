import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';
import '../pages/Auth/log_in.dart';

class successNextButton extends StatefulWidget {
  @override
  _successNextButtonState createState() => _successNextButtonState();
}

class _successNextButtonState extends State<successNextButton> {
  bool showButton = false;

  @override
  void initState() {
    super.initState();
    // Delay the display of the button by 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showButton = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return showButton
        ?   Container(
      width: MediaQuery.of(context).size.width/2,
      height: 40,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              foregroundColor: blackColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              )
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return LogIn();
            }));
          }, child: Text('Next',style: GoogleFonts.roboto(
          fontSize: 18,
          color: blackColor),)),
    )
        : Container();
  }
}