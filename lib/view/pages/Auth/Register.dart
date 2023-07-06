import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/pages/Auth/log_in.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                      child: Text('Register',style: GoogleFonts.roboto(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: whiteColor
                      ),),
                    ),
                    Image.asset('assets/Union3.png'
                    ),

                    Positioned(
                        top: constraints.maxHeight *0.13,
                        left: constraints.maxWidth * 0.05,
                        right: constraints.maxWidth * 0.05,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text('First Name',style: GoogleFonts.roboto(
                                    color: blackColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300
                                ),),
                              ),
                              Expanded(
                                child: Text(' Last Name',style: GoogleFonts.roboto(
                                    color: blackColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300
                                ),),
                              )
                            ],
                          ),
                        )),
                    Positioned(
                        top: constraints.maxHeight *0.16,
                        left: constraints.maxWidth * 0.05,
                        right: constraints.maxWidth * 0.05,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 45,
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
                                ),
                              ),
                              width10,
                              Expanded(
                                child: Container(
                                  height: 45,
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
                                ),
                              ),
                            ],
                          ),
                        )),

                    Positioned(
                        top: constraints.maxHeight *0.22,
                        left: constraints.maxWidth * 0.05,
                        right: constraints.maxWidth * 0.05,
                        child: Text('Email',style: GoogleFonts.roboto(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),)),
                    Positioned(
                      top: constraints.maxHeight *0.25,
                      left: constraints.maxWidth * 0.05,
                      right: constraints.maxWidth * 0.05,
                      child: Container(
                        height: 45,
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
                        top: constraints.maxHeight *0.31,
                        left: constraints.maxWidth * 0.05,
                        right: constraints.maxWidth * 0.05,
                        child: Text('Enter Verification Code',style: GoogleFonts.roboto(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),)),
                    Positioned(
                      top: constraints.maxHeight *0.34,
                      left: constraints.maxWidth * 0.05,
                      right: constraints.maxWidth * 0.05,
                      child: Container(
                        height: 45,
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
                        top: constraints.maxHeight *0.4,
                        left: constraints.maxWidth * 0.05,
                        right: constraints.maxWidth * 0.05,
                        child: Text('Phone Number',style: GoogleFonts.roboto(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),)),
                    Positioned(
                      top: constraints.maxHeight *0.43,
                      left: constraints.maxWidth * 0.05,
                      right: constraints.maxWidth * 0.05,
                      child: Container(
                        height: 45,
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
                        top: constraints.maxHeight *0.49,
                        left: constraints.maxWidth * 0.05,
                        right: constraints.maxWidth * 0.05,
                        child: Text('Password',style: GoogleFonts.roboto(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),)),
                    Positioned(
                      top: constraints.maxHeight *0.52,
                      left: constraints.maxWidth * 0.05,
                      right: constraints.maxWidth * 0.05,
                      child: Container(
                        height: 45,
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
                        top: constraints.maxHeight *0.58,
                        left: constraints.maxWidth * 0.05,
                        right: constraints.maxWidth * 0.05,
                        child: Text('Confirm Password',style: GoogleFonts.roboto(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),)),
                    Positioned(
                      top: constraints.maxHeight *0.61,
                      left: constraints.maxWidth * 0.05,
                      right: constraints.maxWidth * 0.05,
                      child: Container(
                        height: 45,
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
                        top: constraints.maxHeight *0.67,
                        left: constraints.maxWidth * 0.05,
                        right: constraints.maxWidth * 0.05,
                        child: Text('Referral Code',style: GoogleFonts.roboto(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),)),
                    Positioned(
                      top: constraints.maxHeight *0.7,
                      left: constraints.maxWidth * 0.05,
                      right: constraints.maxWidth * 0.05,
                      child: Container(
                        height: 45,
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
                        top: constraints.maxHeight *0.76,
                        left: constraints.maxWidth * 0.05,
                        right: constraints.maxWidth * 0.05,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'By clicking registeration button, you hereby agree with the service ',
                                style: GoogleFonts.roboto(color: blackColor),
                              ),
                              TextSpan(

                                text: 'terms of service',
                                style: GoogleFonts.roboto(color: redColor),
                              ),
                              TextSpan(
                                text: ' & ',
                                style: GoogleFonts.roboto(color: blackColor),
                              ),
                              TextSpan(
                                text: 'privacy policy',
                                style: GoogleFonts.roboto(color: redColor),
                              ),
                              TextSpan(
                                text: ' of type',
                                style: GoogleFonts.roboto(color: blackColor),
                              ),
                            ],
                          ),
                        )
                    ),

                    Positioned(
                        bottom: 0,
                        left: constraints.maxWidth * 0.25,
                        right: constraints.maxWidth * 0.25,
                        child: ElevatedButton(
                          style: elevatedButtonStyle,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return LogIn();
                            }));
                          },
                          child: Text('Register',style: GoogleFonts.roboto(color: whiteColor),),
                        ))
                  ],
                ),

              ],
            );
          },
        )
      ),
    );
  }
}
