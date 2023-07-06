import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/pages/Auth/Register.dart';
import 'package:wallet_app/view/pages/Auth/successScreen.dart';

class VerifyCode extends StatefulWidget {
  const VerifyCode({super.key});

  @override
  State<VerifyCode> createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
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
                      child: Text('Verification',style: GoogleFonts.roboto(
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
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(20)
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Enter your 4 digital code the we just send to your phone number"
                              ,style: GoogleFonts.roboto(
                                  color: blackColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300
                              ),),
                          ),
                        )),
                    Positioned(
                        top: constraints.maxHeight *0.4,
                        left: constraints.maxWidth * 0.1,
                        child: Text('Enter Verification code',style: GoogleFonts.roboto(
                            color: blackColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w300
                        ),)),
                    Positioned(
                      top: constraints.maxHeight *0.45,
                      left: 0,
                      right: constraints.maxWidth *0.2,
                      child: FractionallySizedBox(widthFactor: 1, child: OTPcode()),),



                    Positioned(
                        bottom: 20,
                        left: constraints.maxWidth * 0.25,
                        right: constraints.maxWidth * 0.25,
                        child: ElevatedButton(
                          style: elevatedButtonStyle,
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return successScreen();
                            }));
                          },
                          child: Text('Verify',style: GoogleFonts.roboto(color: whiteColor),),
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




class OTPcode extends StatefulWidget {
  const OTPcode({Key? key}) : super(key: key);

  @override
  State<OTPcode> createState() => _OTPcodeState();
}

class _OTPcodeState extends State<OTPcode> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 52,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: textFieldColor),
      ),
    );

    return Form(
      key: formKey,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: Pinput(
              controller: pinController,
              focusNode: focusNode,
              androidSmsAutofillMethod:
              AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              validator: (value) {
                return value == '1234' ? null : 'Pin is incorrect';
              },
              // onClipboardFound: (value) {
              //   debugPrint('onClipboardFound: $value');
              //   pinController.setText(value);
              // },
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
                // Navigator.push(context, MaterialPageRoute(builder: (context){
                //   return bottomnav();
                // }));
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              cursor: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: textFieldColor,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(    color: textFieldColor,),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: textFieldColor,),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
            ),
          ),

        ],
      ),
    );
  }
}