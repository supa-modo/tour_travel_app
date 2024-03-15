import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tour_travel_flutter_app/Widgets/credit_card_widget.dart';
import 'package:tour_travel_flutter_app/Widgets/editable_credit_card.dart';
import 'package:tour_travel_flutter_app/Widgets/mpesa_widget.dart';

class BookTrip extends StatefulWidget {
  const BookTrip({super.key});

  @override
  State<BookTrip> createState() => _BookTripState();
}

class _BookTripState extends State<BookTrip> {
  bool mpesaSelected = false;
  bool bankCardSelected = false;
  bool saveCardForFutureUse = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: Stack(
          children: [
            Positioned(
            top: 10,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black87.withOpacity(.3),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 10, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Book your spot now',
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Choose Your Payment Method',
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: mpesaSelected,
                            onChanged: (value) {
                              setState(() {
                                mpesaSelected = value!;
                                bankCardSelected = false;
                              });
                            },
                          ),
                          const Text('MPesa'),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Row(
                        children: [
                          Checkbox(
                            value: bankCardSelected,
                            onChanged: (value) {
                              setState(() {
                                bankCardSelected = value!;
                                mpesaSelected = false;
                              });
                            },
                          ),
                          const Text('Bank Card'),
                        ],
                      ),
                    ],
                  ),
                  if (mpesaSelected)
                    buildLipaNaMpesa(),
                  if (bankCardSelected)   
                    buildCreditCard(
                        color: const Color(0xFF090943),
                        cardNumber: "1234 XXXX XXXX 5678",
                        cardHolder: "EDDY OCHIENG ODHIAMBO",
                        cardExpiration: "08/22"),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: ElevatedButton(
                      onPressed: () {
                        // Implement payment logic here
                      },
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Pay', style: TextStyle(color: Colors.green),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
