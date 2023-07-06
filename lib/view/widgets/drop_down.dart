import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';

class MyDropdown extends StatefulWidget {
  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String dropdownValue = 'What is BTC Classic?';

  @override
  Widget build(BuildContext context) {
    return
    Container(
      height: 45,
      decoration: BoxDecoration(
        color: lightGreyColor,),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton(
          isExpanded: true,
          underline: Container(),
          borderRadius: BorderRadius.circular(12),
          dropdownColor: lightGreyColor,
          value: dropdownValue,
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['What is BTC Classic?', 'a', 'b', 'c'].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: GoogleFonts.roboto(fontSize: 20),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
