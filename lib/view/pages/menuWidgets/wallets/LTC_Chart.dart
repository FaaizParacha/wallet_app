import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/widgets/drop_down.dart';

class LTC_Chart extends StatefulWidget {
  const LTC_Chart({super.key});

  @override
  State<LTC_Chart> createState() => _LTC_ChartState();
}

class _LTC_ChartState extends State<LTC_Chart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        centerTitle: true,
        title: Text('LTC Chart',style: GoogleFonts.roboto(color: blackColor),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          color: blackColor,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Row(
            children: [
              Expanded(child: ElevatedButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)
                  // {
                  //   return Container();
                  // }));

                },
                child: Text('Buy',style: GoogleFonts.roboto(
                    color: whiteColor,
                    fontWeight: FontWeight.w600
                ),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(
                            color: blackColor
                        )
                    )
                ),
              )),
              width6,
              Expanded(child: ElevatedButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)
                  // {
                  //   return Container();
                  // }));

                },
                child: Text('Swap',style: GoogleFonts.roboto(
                    color: whiteColor,
                    fontWeight: FontWeight.w600
                ),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(
                            color: blackColor
                        )
                    )
                ),
              )),
              width6,
              Expanded(child: ElevatedButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)
                  // {
                  //   return Container();
                  // }));

                },
                child: Text('Sell',style: GoogleFonts.roboto(
                    color: whiteColor,
                    fontWeight: FontWeight.w600
                ),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(
                            color: blackColor
                        )
                    )
                ),
              )),
            ],
          ),

          OutlinedButton(
            onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)
              // {
              //   return Container();
              // }));

            },
            child: Text('My BTC Wallet',style: GoogleFonts.roboto(
                color: green,
                fontWeight: FontWeight.w600
            ),),
            style: OutlinedButton.styleFrom(
                backgroundColor: whiteColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                    side: BorderSide(
                        color: green
                    )
                ),
                side: BorderSide(
                    color: green
                )
            ),
          ),

          height20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('BTC',style: GoogleFonts.roboto(color: blackColor),),
              Text('\$0.00913',style: GoogleFonts.roboto(color: blackColor,fontWeight: FontWeight.bold),),
              Text('-18.47%',style: GoogleFonts.roboto(color: redColor,fontWeight: FontWeight.bold),)
            ],
          ),
          height10,
          Image.asset('assets/chart.png'),

          height20,
          Row(
            children: [
              Expanded(child: Card(
                elevation: 0,
                color: lightGreyColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Volume (24h)',style: GoogleFonts.roboto(color: blackColor),),
                    Text('\$0.00913',style: GoogleFonts.roboto(color: green,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              )),
              width8,

              Expanded(child: Card(
                elevation: 0,
                color: lightGreyColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Volume (24h)',style: GoogleFonts.roboto(color: blackColor),),
                      Text('\$0.00913',style: GoogleFonts.roboto(color: green,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ))
            ],
          ),
          height10,
          MyDropdown()
        ],
      ),
    );
  }
}
