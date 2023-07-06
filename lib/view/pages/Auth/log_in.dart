import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';

import 'package:wallet_app/view/pages/menuWidgets/profile.dart';

import '../menuWidgets/bottomNav.dart';
import 'forgotPassword.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        bottom: false,
        child: LayoutBuilder(
            builder: (context,constraints){
          return Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: Text('Log In',style: GoogleFonts.roboto(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: whiteColor
                    ),),
                  ),
                  Image.asset('assets/Union3.png'
                  ),
                  Positioned(
                      top: constraints.maxHeight *0.15,
                      left: constraints.maxWidth * 0.1,
                      child: Text('Welcome Back',style: GoogleFonts.roboto(
                          color: whiteColor,
                          fontSize: 26,
                          fontWeight: FontWeight.w500
                      ),)),
                  Positioned(
                      top: constraints.maxHeight *0.2,
                      left: constraints.maxWidth * 0.1,
                      child: Text('Earn a positive income',style: GoogleFonts.roboto(
                          color: whiteColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w300
                      ),)),
                  Positioned(
                      top: constraints.maxHeight *0.35,
                      left: constraints.maxWidth * 0.1,
                      child: Text('Enter Email',style: GoogleFonts.roboto(
                          color: blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w300
                      ),)),
                  Positioned(
                    top: constraints.maxHeight *0.38,
                    left: constraints.maxWidth * 0.1,
                    right: constraints.maxWidth * 0.1,
                    child: Container(
                      height: 45,
                      width: constraints.maxWidth,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border:  OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: textFieldColor,
                          filled: true,

                        ),
                      ),
                    ),),

                  Positioned(
                    top: constraints.maxHeight *0.45,
                    left: constraints.maxWidth * 0.1,
                    child:Text('Enter Password',style: GoogleFonts.roboto(
                        color: blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w300
                    ),),),
                  Positioned(
                    top: constraints.maxHeight *0.48,
                    left: constraints.maxWidth * 0.1,
                    right: constraints.maxWidth * 0.1,
                    child: Container(
                      height: 45,
                      width: constraints.maxWidth,
                      child: TextField(
                        decoration: InputDecoration(
                          border:  OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: textFieldColor,
                          filled: true,
                          suffixIconConstraints:const BoxConstraints(
                            minHeight: 14,
                            minWidth: 14,
                          ),
                        ),
                      ),
                    ),),

                  Positioned(
                      top: constraints.maxHeight *0.53,
                      right: constraints.maxWidth * 0.1,
                      child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return RestPassword();
                          }));
                        },
                        child: Text('Forgot Password',style: GoogleFonts.roboto(
                            color: redColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),),
                      )),

                  Positioned(
                      top: constraints.maxHeight *0.7,
                      left: constraints.maxWidth * 0.25,
                      right: constraints.maxWidth * 0.25,
                      child: ElevatedButton(
                        style: elevatedButtonStyle,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return CustomImageBottomNavBar();
                          }));
                        },
                        child: Text('Login',style: GoogleFonts.roboto(color: whiteColor),),
                      )),

                ],
              ),
              height20,
              Container(
                width: 90,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: backgroundColor,
                        foregroundColor: blackColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                    onPressed: (){},
                    child: Text('Skip',style: GoogleFonts.roboto(color: blackColor),)),
              ),
            ],
          );
        }),
      ),
    );
  }
}
