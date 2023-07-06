import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/pages/Auth/log_in.dart';
import 'package:wallet_app/view/widgets/ListTileWidget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: whiteColor,
          leadingWidth: 80,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage('https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50'),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('name',style: GoogleFonts.roboto(
                  color: blackColor
              ),),
              Text('email',style: GoogleFonts.roboto(
                  color: blackColor,
                fontSize: 12
              ),),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LogIn();
                }));
              },
              child: Text('Logout',style: GoogleFonts.roboto(
                  color: textFieldColor,
                  fontSize: 18
              ),),
          ),
            ),],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(120),
            child: Divider(color: greyColor,thickness: 5,),
          ),
        ),
      ),
      backgroundColor: whiteColor,
      body: ListView(
        children: [

          listTileWidget(navigatorScren:Container(), textName: 'Dashboard'),
          listTileWidget(navigatorScren:Container(), textName: 'Profile'),
          listTileWidget(navigatorScren:Container(), textName: 'Wallet / Finance'),
          listTileWidget(navigatorScren:Container(), textName: 'Affiliate Earning'),
          listTileWidget(navigatorScren:Container(), textName: 'Reward Balance'),
          listTileWidget(navigatorScren:Container(), textName: 'My appointments'),
          listTileWidget(navigatorScren:Container(), textName: 'Payments'),
          listTileWidget(navigatorScren:Container(), textName: 'My invoices'),
          listTileWidget(navigatorScren:Container(), textName: 'My deta'),
          listTileWidget(navigatorScren:Container(), textName: 'Discover'),
          listTileWidget(navigatorScren:Container(), textName: 'Browser'),
          listTileWidget(navigatorScren:Container(), textName: 'Security'),
          height20,height20,height20,height20
        ],
      ),
    );
  }
}
