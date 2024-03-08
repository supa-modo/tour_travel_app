import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tour_travel_flutter_app/Widgets/credit_card_widget.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Book your spot now',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Pay with',
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Your Name',
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                      ),
                    ),
                  ],
                ),
              if (bankCardSelected)
                buildCreditCard(
                    color: const Color(0xFF090943),
                    cardNumber: "1234 XXXX XXXX 5678",
                    cardHolder: "EDDY OCHIENG ODHIAMBO",
                    cardExpiration: "08/22"),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement payment logic here
                },
                child: const Text('Pay'),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
