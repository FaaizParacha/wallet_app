import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/pages/menuWidgets/wallets/recieveBTC.dart';
import 'package:wallet_app/view/pages/menuWidgets/wallets/walletOverview.dart';
import 'package:wallet_app/view/widgets/tableWidget.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: whiteColor,
        centerTitle: false,
        leadingWidth: 30,
        title: Text('Wallet',style: GoogleFonts.roboto(color: blackColor),),
        actions: [
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              side: BorderSide(
                  width: 1,
                  color: green,
                  style: BorderStyle.solid),
              elevation: 0,
              foregroundColor: green,
            ),
              icon: SvgPicture.asset('assets/smallcoin.svg',color: green,),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)
              {
                return WalletOverview();
              }));
              },
              label:  Text('Deposit Funds',style: GoogleFonts.roboto(
            color: green
          ),)),
          width8,
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

          height20,
          Text('My Holdings',style: GoogleFonts.roboto(color: blackColor,fontSize: 16),),
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/searchBig.png')),
          height20,

          Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                      height: 45,
                      child:TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Search coin',
                          contentPadding: EdgeInsets.symmetric(vertical: 8.0), // Adjust the vertical padding as needed
                        ),
                        style: TextStyle(fontSize: 16.0), // Adjust the font size as needed
                        textAlignVertical: TextAlignVertical.center,
                      )
                  )),
              width20,
              Expanded(
                  child:ElevatedButton(

                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
                onPressed: (){},
                child: Text('Show All',style: GoogleFonts.roboto(color: blackColor,fontWeight: FontWeight.bold),),

              ))
            ],
          ),
          height10,

          DataTable(
            columnSpacing: 5,

            columns: [
              DataColumn(label: Text('Coin / Volume')),
              DataColumn(label: Text('Price')),
              DataColumn(label: Text('24h Change')),
            ],
            rows: List<DataRow>.generate(5, (index) {
              return DataRow(
                cells: [
                  DataCell(Text('BTC')),
                  DataCell(Text('21,218')),
                  DataCell(Card(
                    color: pink,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('-5.35 %'),
                    ),
                  )),
                ],
              );
            }),
          ),
          height20,height20,height20,height20

        ],
      ),
    );
  }
}
