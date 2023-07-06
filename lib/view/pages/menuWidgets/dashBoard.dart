import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/widgets/tableWidget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        centerTitle: false,
        leadingWidth: 30,
        title: Text('Dashboard',style: GoogleFonts.roboto(color: blackColor),),
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
        padding: EdgeInsets.only(left: 10,right: 10),
        children: [
          height10,
        LayoutBuilder(builder: (context,constraints){
          return   Stack(
            children: [
              Image.asset('assets/boxDashboard.png'),
              Positioned(
                  left: constraints.maxWidth *0.4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text('Total Balance',style: GoogleFonts.roboto(
                      color: blackColor,
                      fontWeight: FontWeight.bold
                    ),),
                  ))
            ],
          );
        }),
          height10,
          Row(
            children: [
              Expanded(child: LayoutBuilder(builder: (context,constraints){
                return   Stack(
                  children: [
                    Image.asset('assets/boxDashboard.png'),
                    Positioned(
                        left: constraints.maxWidth *0.2,
                        right: constraints.maxWidth *0.1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('Available Balance',style: GoogleFonts.roboto(
                              color: blackColor,
                              fontWeight: FontWeight.bold
                          ),),
                        ))
                  ],
                );
              }),),
              width10,
              Expanded(child: LayoutBuilder(builder: (context,constraints){
                return   Stack(
                  children: [
                    Image.asset('assets/boxDashboard.png'),
                    Positioned(
                        left: constraints.maxWidth *0.2,
                        right: constraints.maxWidth *0.1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('Affiliate Next Payout',style: GoogleFonts.roboto(
                              color: blackColor,
                              fontWeight: FontWeight.bold
                          ),),
                        ))
                  ],
                );
              }),)
            ],
          ),
          height10,
          Row(
            children: [
              Expanded(child: LayoutBuilder(builder: (context,constraints){
                return   Stack(
                  children: [
                    Image.asset('assets/boxDashboard.png'),
                    Positioned(
                        left: constraints.maxWidth *0.2,
                        right: constraints.maxWidth *0.1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('Reward Balance',style: GoogleFonts.roboto(
                              color: blackColor,
                              fontWeight: FontWeight.bold
                          ),),
                        ))
                  ],
                );
              }),),
              width10,
              Expanded(
                child: LayoutBuilder(builder: (context,constraints){
                return   Stack(
                  children: [
                    Image.asset('assets/boxDashboard.png'),
                    Positioned(
                        left: constraints.maxWidth *0.2,
                        right: constraints.maxWidth *0.1,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text('My Booking',style: GoogleFonts.roboto(
                              color: blackColor,
                              fontWeight: FontWeight.bold
                          ),),
                        ))
                  ],
                );
              }),)
            ],
          ),
          height20,
          tableWidget(heading: 'My holding',hntTxt: 'Search for a coin',),
          tableWidget(heading: 'Recent Transactions',hntTxt: 'Search',),
          tableWidget(heading: 'Recent Shopping',hntTxt: 'Search',),
          height20,height20,height20,
        ],
      ),
    );
  }
}
