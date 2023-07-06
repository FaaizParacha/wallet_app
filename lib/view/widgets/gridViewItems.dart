import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';

class gridViewItems extends StatelessWidget {
  final String imageUrl,title;
  final bool png;
  const gridViewItems({super.key,required this.imageUrl,required this.title,this.png = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      elevation: 0,
      color: green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          png==true?Image.asset(imageUrl):SvgPicture.asset(imageUrl),
          height8,
          Padding(
            padding: const EdgeInsets.only(left: 4.0,right: 4),
            child: Text(title,maxLines:2,style: GoogleFonts.roboto(),
            ),
          )
        ],
      ),
    );
  }
}
