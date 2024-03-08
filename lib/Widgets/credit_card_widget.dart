import 'package:flutter/material.dart';

Widget buildCreditCard(
    {required Color color,
    required String cardNumber,
    required String cardHolder,
    required String cardExpiration}) {
  return Card(
    color: color,
    child: Container(
      height: 200,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildLogosBlock(),
          //Card number details
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              cardNumber,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontFamily: 'CourierPrime'),
            ),
          ),
          //Card chip and contactless icon
          Row(
            children: <Widget>[
              Image.asset("assets/images/chip.jpeg", height: 35, width: 29,),
              Image.asset("assets/images/contact_less.png", height: 30, width: 25,),
            ],
          ),
          //Card name and expiration
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buidlCardDetails(label: "Card Holder", value: cardHolder),
              buidlCardDetails(label: "Valid Thru", value: cardExpiration),
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
        height: 50,
        width: 50,
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
