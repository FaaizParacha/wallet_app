import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';

class DepositFundsDetail extends StatelessWidget {
  const DepositFundsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: Text('Wallet',style: GoogleFonts.roboto(color: blackColor),),
        backgroundColor: whiteColor,
        leading: IconButton(onPressed: (){Navigator.pop(context);},
            icon: Icon(Icons.arrow_back,color: blackColor,)),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(backgroundColor: blackColor,
              child: Text('AB',style: GoogleFonts.roboto(
                  color: green
              ),),
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Text('How would you like to deposit?',
            style: GoogleFonts.roboto(color: blackColor,fontSize: 16,fontWeight: FontWeight.bold),),

          Text('Your current Balance is \$0',
            style: GoogleFonts.roboto(color: blackColor),),

          height20,
          Text('PayID',
            style: GoogleFonts.roboto(color: blackColor),),
          height4,
          Text.rich(
            TextSpan(
              style: GoogleFonts.roboto(),
              children: [
                TextSpan(text: 'Daily  Limit remaining:  '),
                TextSpan(
                  text: 'Please refer to your bank\n',
                  style: GoogleFonts.roboto(color: green),
                ),
                TextSpan(text: 'Instant | No Fee | Min. Deposit: \$1.00 AUD'),
              ],
            ),
          ),

          height20,
          Text('Direct Deposit',
            style: GoogleFonts.roboto(color: blackColor),),
          height4,
          Text.rich(
            TextSpan(
              style: GoogleFonts.roboto(),
              children: [
                TextSpan(text: 'Daily  Limit remaining:  '),
                TextSpan(
                  text: '\$100.00 AUD\n',
                  style: GoogleFonts.roboto(color: green),
                ),
                TextSpan(text: 'Instant | No Fee | Min. Deposit: \$1.00 AUD'),
              ],
            ),
          ),

          height20,
          Text('BPay',
            style: GoogleFonts.roboto(color: blackColor),),
          height4,
          Text.rich(
            TextSpan(
              style: GoogleFonts.roboto(),
              children: [
                TextSpan(text: 'Daily  Limit remaining:  '),
                TextSpan(
                  text: '\$100.00 AUD\n',
                  style: GoogleFonts.roboto(color: green),
                ),
                TextSpan(text: 'Instant | No Fee | Min. Deposit: \$1.00 AUD'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
