import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/constants.dart';
class EarnBTC extends StatefulWidget {
  const EarnBTC({super.key});

  @override
  State<EarnBTC> createState() => _EarnBTCState();
}

class _EarnBTCState extends State<EarnBTC> with SingleTickerProviderStateMixin{

  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        centerTitle: true,
        title: Text('Earn BTC',style: GoogleFonts.roboto(color: blackColor),),
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
              Expanded(child: Card(
                elevation: 0,
                color: lightGreyColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Balance',style: GoogleFonts.roboto(color: blackColor),),
                      Text('=0.00913',style: GoogleFonts.roboto(color: green,fontWeight: FontWeight.bold),),
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
                      Text('Amout Earning',style: GoogleFonts.roboto(color: blackColor),),
                      Text('\$0.00913',style: GoogleFonts.roboto(color: green,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ))
            ],
          ),
          height10,

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
                      Text('Next Payout Date',style: GoogleFonts.roboto(color: blackColor),),
                      Text('=0.00913',style: GoogleFonts.roboto(color: green,fontWeight: FontWeight.bold),),
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
                      Text('Total Reward',style: GoogleFonts.roboto(color: blackColor),),
                      Text('\$0.00913',style: GoogleFonts.roboto(color: green,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ))
            ],
          ),

          height20,

          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: DefaultTabController(
                length: 3, // Number of tabs
                child: Column(
                    children: [
                      TabBar(
                        controller: tabController,
                        indicatorColor: whiteColor,
                        labelColor: green,
                        unselectedLabelColor: greyColor,
                        isScrollable: true,
                        labelStyle: GoogleFonts.roboto(),
                        tabs: [
                          Tab(text: 'Earn BTC'),
                          Tab(text: 'History'),
                          Tab(text: 'Rewards'),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text('Abvailable BTC\n0',style: GoogleFonts.roboto(
                                       color: blackColor,
                                       fontWeight: FontWeight.bold
                                   ),),

                                   Text('8.1% APY',style: GoogleFonts.roboto(
                                       color: green,
                                       fontWeight: FontWeight.bold
                                   ),),

                                 ],
                               ),

                                height10,

                                OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                        color: green
                                      )
                                    ),
                                    onPressed: (){},
                                    child: Text('Add All',style: GoogleFonts.roboto(
                                      color: green
                                    ),)),

                                height10,
                                Text('Enter Amount',style: GoogleFonts.roboto(
                                  color: blackColor
                                ),),
                                height4,
                                Container(
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(color: green),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(color: green),
                                      ),

                                      suffixIcon: Container(

                                        height: 45,
                                        padding: EdgeInsets.all(8),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: IntrinsicHeight(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                VerticalDivider(thickness: 2,),
                                                Text('BTC'),
                                              ],
                                            ),
                                          )
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Text('You have no history'),
                            ),
                            Container(
                              child: Text('You have no rewards'),
                            ),
                          ],
                        ),
                      ),
                    ])),
          ),
        ],
      ),
    );
  }
}
