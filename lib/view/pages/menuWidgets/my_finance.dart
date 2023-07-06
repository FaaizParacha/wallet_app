import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';

import '../../widgets/gridViewItems.dart';


class MyFinance extends StatefulWidget {
  const MyFinance({super.key});

  @override
  State<MyFinance> createState() => _MyFinanceState();
}

class _MyFinanceState extends State<MyFinance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        centerTitle: false,
        leadingWidth: 30,
        title: Text('MyFinance',style: GoogleFonts.roboto(color: blackColor),),
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
          height8,
          GridView.count(
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            children: const[
              gridViewItems(imageUrl: 'assets/crypto.svg',title: 'Send Crypto',),
              gridViewItems(imageUrl: 'assets/crytpo.svg',title: 'Receive Crypto',),
              gridViewItems(imageUrl: 'assets/swap.svg',title: 'Swap Coins',),
              gridViewItems(imageUrl: 'assets/carddetail.svg',title: 'Card Details',),
              gridViewItems(imageUrl: 'assets/deposit.svg',title: 'Deposit FIAT',),
              gridViewItems(imageUrl: 'assets/withdrawl.svg',title: 'Withdrawal FIAT',),
            ],
          ),

          Text('My Holdings',style: GoogleFonts.roboto(color: blackColor,fontSize: 16),),
          height10,

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
