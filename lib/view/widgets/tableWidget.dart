import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/constants.dart';

class tableWidget extends StatelessWidget {
  final String heading,hntTxt;
  const tableWidget({super.key,required this.heading,required this.hntTxt});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      primary: false,
      children: [
        Text(heading,style: GoogleFonts.roboto(color: blackColor,fontSize: 16),),
        height8,
        Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                    height: 45,
                    child:TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: '\t $hntTxt',
                        contentPadding: EdgeInsets.symmetric(vertical: 8.0), // Adjust the vertical padding as needed
                      ),
                      style: TextStyle(fontSize: 16.0), // Adjust the font size as needed
                      textAlignVertical: TextAlignVertical.center,
                    )
                )),
            width20,
            Expanded(child:Text('Show All',style: GoogleFonts.roboto(color: blackColor,fontWeight: FontWeight.bold),),)
          ],
        ),
        height8,
        DataTable(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(color: Colors.grey[300]!, width: 0),
            borderRadius: BorderRadius.circular(10),
          ),
          dividerThickness: 0, // Remove the lines between cells
          dataRowHeight: 40, // Adjust the row height as needed
          headingRowHeight: 40, // Adjust the heading row height as needed
          columnSpacing: 16, // Adjust the spacing between columns as needed

          columns: [
            DataColumn(label: Text('Coin',style: GoogleFonts.roboto(
                fontWeight: FontWeight.w800
            ),)),
            DataColumn(label: Text('24h Change',style: GoogleFonts.roboto(
                fontWeight: FontWeight.w800
            ),)),
            DataColumn(label: Text('Balance',style: GoogleFonts.roboto(
                fontWeight: FontWeight.w800
            ),)),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('Bitcoin',style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w800
              ),)),
              DataCell(Text('+1.32 %',style: GoogleFonts.roboto(color: green),)),
              DataCell(Text('\$84,594',style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w800
              ),)),
            ]),
            DataRow(cells: [
              DataCell(Text('Ethereum',style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w800
              ),)),
              DataCell(Text('+2.32 %',style: GoogleFonts.roboto(color: green),)),
              DataCell(Text('\$84,594',style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w800
              ),)),
            ]),
            DataRow(cells: [
              DataCell(Text('Solana')),
              DataCell(Text('+4.32 %',style: GoogleFonts.roboto(color: green),)),
              DataCell(Text('\$84,594',style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w800
              ),)),
            ]),
          ],
        )
      ],
    );
  }
}
