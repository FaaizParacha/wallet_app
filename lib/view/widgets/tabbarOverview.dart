import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';

class TabBarOverview extends StatelessWidget {
  const TabBarOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 0,
              color: lightGreyColor,

              child: Padding(
                padding: const EdgeInsets.only(left: 15.0,top: 15,bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Balance',style: GoogleFonts.roboto(
                        color: blackColor,
                    ),),
                    height6,
                    Text('0',style: GoogleFonts.roboto(
                        color: blackColor,

                    ),),
                  ],
                ),
              )

            )),
            width10,
            Expanded(child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 0,
                color: lightGreyColor,

                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0,top: 15,bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price',style: GoogleFonts.roboto(
                        color: blackColor,
                      ),),
                      height6,
                      Text('\$91.33',style: GoogleFonts.roboto(
                        color: blackColor,

                      ),),
                    ],
                  ),
                )

            )),
          ],
        ),
        height10,
        Row(
          children: [
            Expanded(child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 0,
                color: lightGreyColor,

                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0,top: 15,bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Available Balance',style: GoogleFonts.roboto(
                        color: blackColor,
                      ),),
                      height6,
                      Text('0',style: GoogleFonts.roboto(
                        color: blackColor,

                      ),),
                    ],
                  ),
                )

            )),
            width10,
            Expanded(child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 0,
                color: lightGreyColor,

                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0,top: 15,bottom: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Approx Value',style: GoogleFonts.roboto(
                        color: blackColor,
                      ),),
                      height6,
                      Text('\$0.00',style: GoogleFonts.roboto(
                        color: blackColor,

                      ),),
                    ],
                  ),
                )

            )),
          ],
        ),
        height10,
        Text('LTC Wallet Value',style: GoogleFonts.roboto(color: green,fontSize: 18,fontWeight: FontWeight.w600),),
        height6,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('1D'),
            Text('1W'),
            Text('1M'),
            Text('3M'),
            Text('6M'),
            Text('1Y'),
          ],
        ),
        Divider(),
        SizedBox(height: 50,),
        Divider(thickness: 1,color: blackColor,),
        SizedBox(height: 50,),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Jan 2023'),
            Text('May 2023'),
            Text('Sep 2023'),
          ],
        ),
      ],
    );
  }
}




