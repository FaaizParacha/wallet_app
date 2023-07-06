import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class listTileWidget extends StatelessWidget {
  final String textName;
  final Widget navigatorScren;
  const listTileWidget({super.key,required this.navigatorScren,required this.textName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 40),
      title: Text(textName,style: GoogleFonts.roboto(
        fontWeight: FontWeight.w400
      ),),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return navigatorScren;
        }));
      },
    );
  }
}
