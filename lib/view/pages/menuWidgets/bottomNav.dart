import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/pages/menuWidgets/dashBoard.dart';
import 'package:wallet_app/view/pages/menuWidgets/home.dart';
import 'package:wallet_app/view/pages/menuWidgets/my_finance.dart';
import 'package:wallet_app/view/pages/menuWidgets/profile.dart';
import 'package:wallet_app/view/pages/menuWidgets/wallets/wallet.dart';

class CustomImageBottomNavBar extends StatefulWidget {
  @override
  _CustomImageBottomNavBarState createState() => _CustomImageBottomNavBarState();
}

class _CustomImageBottomNavBarState extends State<CustomImageBottomNavBar> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    HomeWidget(),
    Dashboard(),
    Container(
      child: Center(child: Text('3'),),
    ),


    MyFinance(),

    Wallet(),

    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: _pages,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bottomshape.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  width10,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                 // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0,bottom: 0),
                      child: IconButton(
                        icon: SvgPicture.asset('assets/homeicon.svg',color: _selectedIndex==0?green:greyColor,height: 20),
                        onPressed: () {
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                      ),
                    ),
                    Text('Home',style: GoogleFonts.roboto(
                      color: _selectedIndex==0?green:greyColor,
                      fontSize: 12
                    ),)
                  ],
                ),


                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0,bottom: 0),
                        child: IconButton(
                          icon: SvgPicture.asset('assets/dashboard.svg',color: _selectedIndex==1?green:greyColor,height: 20),
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                          },
                        ),
                      ),
                      Text('Dashboard',style: GoogleFonts.roboto(
                        color: _selectedIndex==1?green:greyColor,fontSize: 12
                      ),)
                    ],
                  ),


                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0,bottom: 0),
                        child: IconButton(
                          icon: SvgPicture.asset('assets/apps.svg',color: _selectedIndex==2?green:greyColor,height: 20),
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 2;
                            });
                          },
                        ),
                      ),
                      Text('Apps',style: GoogleFonts.roboto(
                        color: _selectedIndex==2?green:greyColor,fontSize: 12
                      ),)
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0,bottom: 0),
                        child: IconButton(
                          icon: SvgPicture.asset('assets/coin.svg',color: _selectedIndex==3?green:greyColor,height: 20),
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 3;
                            });
                          },
                        ),
                      ),
                      Text('Finance',style: GoogleFonts.roboto(
                        color: _selectedIndex==3?green:greyColor,fontSize: 12
                      ),)
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0,bottom: 0),
                        child: IconButton(
                          icon: SvgPicture.asset('assets/wallet.svg',color: _selectedIndex==4?green:greyColor,height: 20),
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 4;
                            });
                          },
                        ),
                      ),
                      Text('Wallet',style: GoogleFonts.roboto(
                        color: _selectedIndex==4?green:greyColor,fontSize: 12
                      ),)
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0,bottom: 0),
                        child: IconButton(
                          icon: SvgPicture.asset('assets/profile.svg',color: _selectedIndex==5?green:greyColor,height: 20),
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 5;
                            });
                          },
                        ),
                      ),
                      Text('Profile',style: GoogleFonts.roboto(
                        color: _selectedIndex==5?green:greyColor,fontSize: 12
                      ),)
                    ],
                  ),

                  width10,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
