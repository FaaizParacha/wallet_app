import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';
import 'package:wallet_app/view/widgets/gridViewItems.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(140),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)
            )
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset('assets/launcher.png',height: 50,),
          ),
          centerTitle: true,
          title: Text('TUPE',style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            color: blackColor
          ),),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_rounded,color: blackColor,)),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CircleAvatar(backgroundColor: blackColor,
              child: Text('AB',style: GoogleFonts.roboto(
                color: green
              ),),
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0,right: 25),
                  child: Text('Best App to buy cryptocurrency , send money, '
                      'online shopping, booking, deliveries and apply for new career',
                    style: GoogleFonts.roboto(
                    color: blackColor,
                    fontWeight: FontWeight.w500,
                      fontSize: 16
                  ),),
                ),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15,right: 15,top: 10),
        children: [
          Text('Our Services',style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              color: blackColor,
            fontSize: 18
          ),),
          height10,
          GridView.count(
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            children: [
             gridViewItems(imageUrl: 'assets/bitcoin.svg',title: 'Crypto currency exchange',),
              gridViewItems(imageUrl: 'assets/moneytransfer.svg',title: 'Money Transfer',),
              gridViewItems(imageUrl: 'assets/onlineshopping.svg',title: 'Online Shopping',),
              gridViewItems(imageUrl: 'assets/booking.png',title: 'Service Booking',png: true,),
              gridViewItems(imageUrl: 'assets/delivery.svg',title: 'Delivery',),
              gridViewItems(imageUrl: 'assets/job.svg',title: 'Job Seeks',),
              gridViewItems(imageUrl: 'assets/pet.svg',title: 'Pet Shop',),
              gridViewItems(imageUrl: 'assets/finance.svg',title: 'Finance',),
            ],
          ),
          height10,
          Image.asset('assets/card.png'),
          height10,
          Text('Recommended',style: GoogleFonts.roboto(
              fontWeight: FontWeight.w700,
              color: blackColor,
              fontSize: 18
          ),),
          height10,
          GridView.count(
            primary: false,
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            children: [
              gridViewItems(imageUrl: '',title: 'Scan & pay using tupe',),
              gridViewItems(imageUrl: '',title: 'Affiliate Earning upto \$1000plus',),
              gridViewItems(imageUrl: '',title: 'Invest with tupe',),

            ],
          ),

          height20,height20,height20
        ],
      ),
    );
  }
}
