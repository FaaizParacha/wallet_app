import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/pages/Auth/Register.dart';
import 'package:wallet_app/view/pages/Auth/VerifyCode.dart';

class RestPassword extends StatefulWidget {
  const RestPassword({super.key});

  @override
  State<RestPassword> createState() => _RestPasswordState();
}

class _RestPasswordState extends State<RestPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        bottom: false,
        child: LayoutBuilder(
          builder: (context, constraints){
            return Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Text('Forget Password',style: GoogleFonts.roboto(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: whiteColor
                      ),),
                    ),
                    Image.asset('assets/Union3.png'
                    ),

                    Positioned(
                        top: constraints.maxHeight *0.2,
                        left: constraints.maxWidth * 0.1,
                        right: constraints.maxWidth * 0.1,
                        child: Text("Enter your E-mail address belloe and we'll "
                            "send you an email with instructions on how to change your password"
                          ,style: GoogleFonts.roboto(
                              color: blackColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w300
                          ),)),
                    Positioned(
                      top: constraints.maxHeight * 0.4,
                        left: constraints.maxWidth * 0.1,
                        child: Text('Enter Email',style: GoogleFonts.roboto(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),)),
                    Positioned(
                      top: constraints.maxHeight * 0.43,
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
                        bottom: 10,
                        left: constraints.maxWidth * 0.25,
                        right: constraints.maxWidth * 0.25,
                        child: ElevatedButton(
                          style: elevatedButtonStyle,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return VerifyCode();
                            }));
                          },
                          child: Text('Rest Password',style: GoogleFonts.roboto(color: whiteColor),),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Center(child: Container(
                    width: 90,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: backgroundColor,
                            foregroundColor: blackColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            )
                        ),
                        onPressed: (){

                        }, child: Text('Skip',style: GoogleFonts.roboto(color: blackColor),)),
                  ),),
                ),

              ],
            );
          },
        )
      ),
    );
  }
}
