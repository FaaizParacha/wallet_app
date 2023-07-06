import 'package:casa_vertical_stepper/casa_vertical_stepper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/utils/constants.dart';

class SendBTC extends StatefulWidget {
  const SendBTC({super.key});

  @override
  State<SendBTC> createState() => _SendBTCState();
}

class _SendBTCState extends State<SendBTC> {
  int _currentStep = 0;
  TextEditingController controllerClassicAddress = TextEditingController();
  TextEditingController controllerClassicMemo = TextEditingController();
  int upperBound = 6;
  final stepperList = [
  StepperStep(
  title: Text('From Wallet'),
  leading: CircleAvatar(

    backgroundColor: green,
    radius: 15,
  child: Icon(Icons.arrow_downward,color: whiteColor,),
  ),
    view: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Bitcoin'),
        Text('Available Balance: '),
      ],
    ),
  ),
  StepperStep(
  title: Text('To'),
    leading: CircleAvatar(
      backgroundColor: green,
      radius: 15,
      child: Icon(Icons.person_outline_rounded,color: whiteColor,),
    ),
  view: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Name'),
      Text('Address '),
    ],
  ),
  failedView: Container(),
  ),

    StepperStep(
      title: Text('Recipient Gets'),
      leading: CircleAvatar(
        backgroundColor: green,
        radius: 15,
        child: Icon(Icons.check,color: whiteColor,),
      ),
      view: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('0.33 BTC',style: GoogleFonts.roboto(color: green),),
          Text('\$123.567 AUD '),
        ],
      ),
      failedView: Container(),
    ),

    StepperStep(
      title: Text('Transaction Fee'),
      leading: CircleAvatar(
        backgroundColor: green,
        radius: 15,
        child: Text('-',style: GoogleFonts.roboto(color: whiteColor),),
      ),
      view: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('0.33 BTC',style: GoogleFonts.roboto(color: green),),
          Text('Closing Balance: 123.567 AUD '),
        ],
      ),
      failedView: Container(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: whiteColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: blackColor,
              )),
          centerTitle: true,
          title: Text(
            'Send BTC',
            style: GoogleFonts.roboto(color: blackColor),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Theme(
                data: ThemeData(
                  canvasColor: whiteColor,
                        colorScheme: ColorScheme.light(
                            onPrimary: Colors.white,
                            primary: green)
                ),
                child: Stepper(
                  controlsBuilder: (BuildContext context, Contr) {
                    return SizedBox.shrink(); // Return an empty widget to remove the buttons
                  },
                  elevation: 0,
                  type: StepperType.horizontal,
                  currentStep: _currentStep,

                  onStepTapped: (int step){
                    setState(() {
                      _currentStep = step;
                    });
                  },
                  steps: [
                    Step(
                      title: Text(''),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('What are you sending it to?',style: GoogleFonts.roboto(color:darkGrey ),),
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
                              hintText: 'BTC Address',
                            ),
                          ),
                          height8,
                          Text('Memo',style: GoogleFonts.roboto(color:darkGrey ),),
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
                                    hintText: 'Destination Tag',
                                  ),
                                ),
                              ),
                              width8,
                              Flexible(
                                flex: 2,
                                child: Container(),
                              )
                            ],
                          ),
                          Text('This is required if you are sending it an external exchange',style: GoogleFonts.roboto(color:darkGrey ),),
                          height8,
                          Text('Network to send with',style: GoogleFonts.roboto(color:darkGrey ),),
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
                                    hintText: 'Default Terra Classic',
                                    suffixText: 'Fee: 2'
                                  ),
                                ),
                              ),
                              width8,
                              Flexible(
                                flex: 2,
                                child: Container(),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 200,
                          ),
                          Container(
                            height: 45,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (_currentStep < 2) {
                                    _currentStep += 1;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),side: BorderSide(color: blackColor)
                                ),
                              ),
                              child: Text('Continue',style: GoogleFonts.roboto(color: blackColor),),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep == 0,
                      state: _currentStep == 0
                          ? StepState.editing
                          : StepState.indexed,
                    ),
                    Step(
                      title: Text(''),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('How much are you sending?',style: GoogleFonts.roboto(color:darkGrey ),),
                          height10,
                          Text('Available balance',style: GoogleFonts.roboto(color:darkGrey ),),
                          Text('0 BTC',style: GoogleFonts.roboto(color:blackColor ),),
                          height4,
                          Text('The minimum withdrawal amount is 500 BTC',style: GoogleFonts.roboto(color:darkGrey ),),
                          height10,
                          Text('Recipient Gets',style: GoogleFonts.roboto(color:blackColor ),),
                          height2,
                          Container(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: green),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: green),
                                ),

                              suffixIcon: Container(
                                decoration: BoxDecoration(
                                  color: greyColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)
                                  )
                                ),
                                  height: 45,
                                  padding: EdgeInsets.all(8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('BTC'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          height8,
                          Center(child: Text('=',style: GoogleFonts.roboto(color:darkGrey ),)),
                          height4,
                          Container(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: green),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: green),
                                ),

                                suffixIcon: Container(
                                  decoration: BoxDecoration(
                                      color: greyColor,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10),
                                          bottomRight: Radius.circular(10)
                                      )
                                  ),
                                  height: 45,
                                  padding: EdgeInsets.all(8),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('\$AUD'),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          height10,
                          Text('Transaction fee',style: GoogleFonts.roboto(color:darkGrey ),),
                          height4,
                          Text('2',style: GoogleFonts.roboto(color:blackColor ),),
                          height10,
                          Text('Closing Balance',style: GoogleFonts.roboto(color:darkGrey ),),
                          height4,
                          Text('Insufficient funds Available',style: GoogleFonts.roboto(color:Colors.red,fontWeight: FontWeight.bold ),),
                          SizedBox(
                            height: 200,
                          ),
                          Container(
                            height: 45,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (_currentStep < 2) {
                                    _currentStep += 1;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),side: BorderSide(color: blackColor)
                                ),
                              ),
                              child: Text('Continue',style: GoogleFonts.roboto(color: blackColor),),
                            ),
                          ),
                        ],
                      ),
                      isActive: _currentStep == 1,
                      state: _currentStep == 1
                          ? StepState.editing
                          : StepState.indexed,
                    ),
                    Step(
                      title: Text(''),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Transaction Summary',style: GoogleFonts.roboto(color:blackColor , fontWeight: FontWeight.bold),),
                           height14,
                           CasaVerticalStepperView(steps: stepperList,seperatorColor: greyColor),
                          SizedBox(
                            height: 100,
                          ),
                          Container(
                            height: 45,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (_currentStep < 2) {
                                    _currentStep += 1;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),side: BorderSide(color: blackColor)
                                ),
                              ),
                              child: Text('Send',style: GoogleFonts.roboto(color: blackColor),),
                            ),
                          ),

                        ],
                      ),
                      isActive: _currentStep == 2,
                      state: _currentStep == 2
                          ? StepState.editing
                          : StepState.indexed,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Widget nextButton() {
    return ElevatedButton(
      onPressed: () {
        // Increment _currentStep, when the next button is tapped. However, check for upper bound.
        if (_currentStep < upperBound) {
          setState(() {
            _currentStep++;
          });
        }
      },
      child: Text('Next'),
    );
  }

  /// Returns the previous button.
  Widget previousButton() {
    return ElevatedButton(
      onPressed: () {
        // Decrement _currentStep, when the previous button is tapped. However, check for lower bound i.e., must be greater than 0.
        if (_currentStep > 0) {
          setState(() {
            _currentStep--;
          });
        }
      },
      child: Text('Prev'),
    );
  }


  // Returns the header text based on the _currentStep.
  String headerText() {
    switch (_currentStep) {
      case 1:
        return 'Preface';

      case 2:
        return 'Table of Contents';

      case 3:
        return 'About the Author';

      case 4:
        return 'Publisher Information';

      case 5:
        return 'Reviews';

      case 6:
        return 'Chapters #1';

      default:
        return 'Introduction';
    }
  }
}
