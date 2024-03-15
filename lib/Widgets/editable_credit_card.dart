import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCard extends StatefulWidget {
  final Color color;

  const CreditCard({required this.color, Key? key}) : super(key: key);

  @override
  State<CreditCard> createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  String cardNumber = "";
  String cardHolder = "";
  String cardExpiration = "";

  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.color,
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
            //Card number details (editable)
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                decoration: InputDecoration(
                  hintText:
                      cardNumber.isEmpty ? "Enter Card Number" : cardNumber,
                  hintStyle: GoogleFonts.courierPrime(
                      color: Colors.grey, fontSize: 30),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
                style:
                    GoogleFonts.courierPrime(color: Colors.white, fontSize: 30),
                onChanged: (value) => setState(() => cardNumber = value),
              ),
            ),

            //Card name and expiration (editable)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                buildCardDetails(
                  label: "Card Holder",
                  value: cardHolder,
                  onChanged: (value) => setState(() => cardHolder = value),
                ),
                buildCardDetails(
                  label: "VALID THRU",
                  value: cardExpiration,
                  onChanged: (value) => setState(() => cardExpiration = value),
                ),
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

  Widget buildCardDetails(
      {required String label,
      required String value,
      required Function(String) onChanged}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //Card detail label
        Text(
          label,
          style: const TextStyle(
              color: Color.fromARGB(255, 198, 196, 196),
              fontSize: 13,
              fontWeight: FontWeight.bold),
        ),
        //Card detail value (editable)
        TextField(
          decoration: InputDecoration(
            hintText: value.isEmpty ? "Enter Value" : value,
            hintStyle: const TextStyle(
                color: Color.fromARGB(255, 198, 196, 196), fontSize: 18),
            border: InputBorder.none,
          ),
          onChanged: onChanged,
        )
      ],
    );
  }
}
