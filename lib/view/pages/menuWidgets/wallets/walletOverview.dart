import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/pages/menuWidgets/wallets/DepositFundsDetail.dart';
import 'package:wallet_app/view/pages/menuWidgets/wallets/EarnBTC.dart';
import 'package:wallet_app/view/pages/menuWidgets/wallets/LTC_Chart.dart';
import 'package:wallet_app/view/pages/menuWidgets/wallets/recieveBTC.dart';
import 'package:wallet_app/view/pages/menuWidgets/wallets/sendBTC.dart';
import 'package:wallet_app/view/widgets/tabbarOverview.dart';

class WalletOverview extends StatefulWidget {
  const WalletOverview({super.key});

  @override
  State<WalletOverview> createState() => _WalletOverviewState();
}

class _WalletOverviewState extends State<WalletOverview> with SingleTickerProviderStateMixin{
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
        toolbarHeight: 80,
        leading: Column(
          children: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back,color: blackColor,)),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text('Wallet',style: GoogleFonts.roboto(color: blackColor),),
            )
          ],
        ),
        actions: [
         Padding(
           padding: const EdgeInsets.only(right: 15.0),
           child: Column(
             children: [
               IconButton(
                 iconSize: 10,
                 onPressed: (){}, icon: SvgPicture.asset('assets/moneytransfer.svg',color: green,),),
               Text('Trade',style: GoogleFonts.roboto(color: green),)

             ],
           ),
         )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Row(
            children: [
              Expanded(child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return SendBTC();
                  }));

                },
                child: Text('Send',style: GoogleFonts.roboto(
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
              width10,
              Expanded(child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return ReceiveBTC();
                  }));

                },
                child: Text('Recieve',style: GoogleFonts.roboto(
                    color: whiteColor,
                    fontWeight: FontWeight.w600
                ),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: greyColor,
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
          height10,
          Row(
            children: [
              Expanded(child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return LTC_Chart();
                  }));
                },
                child: Text('View lTC Chart',style: GoogleFonts.roboto(
                    color: green,
                    fontWeight: FontWeight.w600
                ),),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(
                            color: green
                        )
                    ),side: BorderSide(
                    color: green
                )
                ),
              )),
              width10,
              Expanded(child: OutlinedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  {
                    return EarnBTC();
                  }));
                },
                child: Text('Earn BTC',style: GoogleFonts.roboto(
                    color: green,
                    fontWeight: FontWeight.w600
                ),),
                style: OutlinedButton.styleFrom(
                  foregroundColor: green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                        side: BorderSide(
                            color: green,
                          width: 2
                        )
                    ),
                    side: BorderSide(
                        color: green
                    )
                ),
              )),
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
                      Tab(text: 'Overview'),
                      Tab(text: 'Trade History'),
                      Tab(text: 'Transactions'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                       TabBarOverview(),
                       Container(
                         child: Text('You have no trade history'),
                       ),
                        Container(
                          child: Text('Once you have completed a send or receive for this coin , '
                              'your transactions will be displayed'),
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
