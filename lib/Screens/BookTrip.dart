import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text('Book Trip'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Book your spot now',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Pay with',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
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
                    Text('MPesa'),
                  ],
                ),
                SizedBox(width: 20),
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
                    Text('Bank Card'),
                  ],
                ),
              ],
            ),
            if (mpesaSelected)
              Column(
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Cardholder Name',
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Card Number',
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Expiry Date',
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'CVC No',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        value: saveCardForFutureUse,
                        onChanged: (value) {
                          setState(() {
                            saveCardForFutureUse = value!;
                          });
                        },
                      ),
                      Text('Save card for future use'),
                    ],
                  ),
                ],
              ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement payment logic here
              },
              child: Text('Pay'),
            ),
          ],
        ),
      ),
    );
  }
}