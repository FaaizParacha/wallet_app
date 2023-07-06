import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/pages/StartingScreens/RegLoginButtonScreen.dart';

class SkipandNext extends StatefulWidget {
  const SkipandNext({super.key});

  @override
  State<SkipandNext> createState() => _SkipandNextState();
}

class _SkipandNextState extends State<SkipandNext> {
  int clickCount = 0;
  List<String> buttonTexts = ['Invest Money with Tupe', "The Safest Digital Blockchain Platform",
    'If you’re on a budget or simply looking', "Best App to buy cryptocurrency , send money, online shopping, booking, deliveries"
  "and apply for new career"];

  List<String> belowButtonTexts = ['','Choosing Tupe the Right Path', "TUPE IS CRYPTO ADDETS ARE HIGHLY VOLATILE"
    "UNREGYLATED INVESTMENT AND MULTI"
    "SERVICES PLATFORM",
    'REFER & EARN. INVITE YOUR FRIENDS & FAMILY TO EARN EXTRA INCOME.'
  ];

  String buttonText = 'Invest Money with Tupe';
  String belowButtonText = '';

  void changeText() {
    setState(() {
      clickCount++;
      if (clickCount <= 3) {
        buttonText = buttonTexts[clickCount];
        belowButtonText = belowButtonTexts[clickCount];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: LayoutBuilder(
            builder: (context, constraints){
              return Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset('assets/launcher.png',height: 150,)),
                      ),

                    ],
                  ),
                  Positioned(
                      bottom: 0,
                      child: Image.asset('assets/Union.png')),
                  Positioned(
                      bottom: clickCount>=3?constraints.maxHeight * 0.3:constraints.maxHeight * 0.5,
                      left: clickCount>=3?constraints.maxWidth * 0.1:constraints.maxWidth * 0.12,
                      right: clickCount>=3?constraints.maxWidth * 0.1:constraints.maxWidth * 0.12,
                      child: Text(buttonText,style: GoogleFonts.roboto(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: whiteColor
                      ),)),

                  Positioned(
                      bottom: clickCount==2?constraints.maxHeight * 0.3:clickCount>=3?constraints.maxHeight * 0.2:constraints.maxHeight * 0.45,
                      left: clickCount>=3?constraints.maxWidth * 0.1:constraints.maxWidth * 0.12,
                      right: clickCount>=3?constraints.maxWidth * 0.1:constraints.maxWidth * 0.12,
                      child: Text(belowButtonText,style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: whiteColor
                      ),)),


                  clickCount>=3?
                  Positioned(
                      left: MediaQuery.of(context).size.width / 4,
                      right: MediaQuery.of(context).size.width / 4,
                      bottom: 50,
                      child: ElevatedButton(

                        style: elevatedButtonStyle,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return RegLoginButton();
                          }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Text('Get Started',style: GoogleFonts.roboto(color: whiteColor),),
                            Spacer(),
                            Icon(Icons.arrow_forward,color: whiteColor,size: 15,),
                            width8,
                          ],
                        ),
                      )):
                  Positioned(
                      bottom: 50,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 90,
                              child: ElevatedButton(
                                  style: elevatedButtonStyle,
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context){
                                      return RegLoginButton();
                                    }));
                                  }, child: Text('Skip',style: GoogleFonts.roboto(color: whiteColor),)),
                            ),

                            Container(
                              width: 90,
                              child: ElevatedButton(
                                  style: elevatedButtonStyle,
                                  onPressed: (){
                                    changeText();
                                  }, child: Text('Next',style: GoogleFonts.roboto(color: whiteColor),)),
                            )
                          ],),
                      ))
                ],
              );
            },
          )
        )
      ),
    );
  }
}




