import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';

class ReceiveBTC extends StatelessWidget {
  const ReceiveBTC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        automaticallyImplyLeading: true,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: blackColor,)),
        title: Text('Receive BTC',style: GoogleFonts.roboto(color: blackColor),),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 10,right: 10,top: 10),
        children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Color(0xff676767),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('This is your first time depositing BTC Generate your details below',style: GoogleFonts.roboto(color: whiteColor),),
                  height8,
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(
                              color: blackColor
                            )
                          ),
                          backgroundColor: green
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                          {
                            return ReceiveBTCDetail();
                          }));
                        }, child: Text('Generate Deposit Address',style: GoogleFonts.roboto(color: whiteColor),)),
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}


class ReceiveBTCDetail extends StatefulWidget {
  const ReceiveBTCDetail({super.key});

  @override
  State<ReceiveBTCDetail> createState() => _ReceiveBTCDetailState();
}

class _ReceiveBTCDetailState extends State<ReceiveBTCDetail> {
  TextEditingController controllerClassicAddress = TextEditingController();
  TextEditingController controllerClassicMemo = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        automaticallyImplyLeading: true,
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: blackColor,)),
        title: Text('Receive BTC',style: GoogleFonts.roboto(color: blackColor),),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text('Network to receive with',style: GoogleFonts.roboto(color:darkGrey ),),
          height4,
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: green),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(color: green),
              ),
              hintText: 'Default Network BTC Classic',
            ),
          ),
          height8,
          Text('BTC Classic address',style: GoogleFonts.roboto(color:darkGrey ),),
          height4,
          Row(
            children: [
              Flexible(
                flex: 5,
                child: TextField(
                  controller: controllerClassicAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: green),
                    ),
                    hintText: 'BTC Classic address',
                  ),
                ),
              ),
              width8,
              Flexible(
                flex: 2,
                child: Container(
                  height: 55,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: greyColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                    ),
                    icon: Icon(Icons.copy,color: blackColor,),
                    onPressed: () {
                      String text = controllerClassicAddress.text;
                      Clipboard.setData(ClipboardData(text: text));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Text copied to clipboard')),
                      );
                    },
                    label: Text('Copy',style: GoogleFonts.roboto(color: blackColor),),
                  ),
                ),
              )
            ],
          ),
          height8,
          Text('BTC Classic Memo',style: GoogleFonts.roboto(color:darkGrey ),),
          height4,
          Row(
            children: [
              Flexible(
                flex: 5,
                child: TextField(
                  controller: controllerClassicMemo,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: green),
                    ),
                    hintText: 'BTC Classic Memo',
                  ),
                ),
              ),
              width8,
              Flexible(
                flex: 2,
                child: Container(
                  height: 55,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: greyColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                    ),
                    icon: Icon(Icons.copy,color: blackColor,),
                    onPressed: () {
                      String text = controllerClassicMemo.text;
                      Clipboard.setData(ClipboardData(text: text));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Text copied to clipboard')),
                      );
                    },
                    label: Text('Copy',style: GoogleFonts.roboto(color: blackColor),),
                  ),
                ),
              )
            ],
          ),
          height20,
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(child: Divider(thickness: 1,color: blackColor,)),
                width2,
                Text('OR'),
                width2,
                Expanded(child: Divider(thickness: 1,color: blackColor,))
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Scan your BTC Address'),
              height4,
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 120,
                  width: 120,
                  color: greyColor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0,right: 5),
                      child: Text('Click to show QR code'),
                    ),
                  ),
                ),
              ),
              height8,
              Text('Scan your Memo'),
              height4,
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 120,
                  width: 120,
                  color: greyColor,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0,right: 5),
                      child: Text('Click to show QR code'),
                    ),
                  ),
                ),
              ),

            ],
          )

        ],
      ),
    );
  }
}

