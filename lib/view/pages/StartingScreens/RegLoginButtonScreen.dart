import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/pages/Auth/log_in.dart';

class RegLoginButton extends StatefulWidget {
  const RegLoginButton({super.key});

  @override
  State<RegLoginButton> createState() => _RegLoginButtonState();
}

class _RegLoginButtonState extends State<RegLoginButton> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: LayoutBuilder(
              builder: (context,constraints){
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
                        child: Image.asset('assets/union2.png')),
                    Positioned(
                        bottom: constraints.maxHeight * 0.4,
                        left: constraints.maxWidth * 0.1,
                        right: constraints.maxWidth * 0.1,
                        child: Text('Best trading and E wallet App which is reliable in trasnactions',
                          style: GoogleFonts.roboto(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: whiteColor
                          ),)),


                    Positioned(
                        bottom: constraints.maxHeight * 0.1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 120,
                                child: ElevatedButton(
                                    style: elevatedButtonStyle,
                                    onPressed: (){
                                    }, child: Text('Register',style: GoogleFonts.roboto(color: whiteColor),)),
                              ),

                              Container(
                                width: 120,
                                child: ElevatedButton(
                                    style: elevatedButtonStyle,
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                        return LogIn();
                                      }));
                                    }, child: Text('log In',style: GoogleFonts.roboto(color: whiteColor),)),
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




