import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildCreditCard(
    {required Color color,
    required String cardNumber,
    required String cardHolder,
    required String cardExpiration}) {
  return Card(
    color: color,
    child: Container(
      height: 220,
      padding: const EdgeInsets.only(left: 12, right: 18, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildLogosBlock(),
          //Card chip and contactless icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                "assets/images/backfilledarrow.png",
                height: 15,
                width: 15,
              ),
              Image.asset(
                "assets/images/chip.png",
                height: 60,
                width: 55,
              ),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/images/contact_less.png",
                height: 30,
                width: 25,
              ),
            ],
          ),
          //Card number details
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              cardNumber,
              style: GoogleFonts.courierPrime(color: Colors.white, 
                  fontSize: 30),
            ),
          ),

          //Card name and expiration
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buidlCardDetails(label: "Card Holder", value: cardHolder),
              buidlCardDetails(label: "VALID THRU", value: cardExpiration),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buildLogosBlock() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      const Text("CREDIT CARD DETAILS",
          style: TextStyle(fontSize: 20, color: Colors.white)),
      Image.asset(
        "assets/images/mastercard.png",
        height: 45,
        width: 45,
      )
    ],
  );
}

Widget buidlCardDetails({required String label, required String value}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      //Card detail label
      Text(
        label,
        // ignore: prefer_const_constructors
        style: TextStyle(
            color: const Color.fromARGB(255, 198, 196, 196),
            fontSize: 13,
            fontWeight: FontWeight.bold),
      ),
      //Card detail value
      Text(
        value,
        style: const TextStyle(
            color: Color.fromARGB(255, 198, 196, 196),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      )
    ],
  );
}
