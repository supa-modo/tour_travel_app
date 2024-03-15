import 'package:flutter/material.dart';

Widget buildLipaNaMpesa() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          fit: BoxFit.contain,
          'assets/images/lipaNaMpesa.png', // Replace with your image asset path
          height: 100,
          width: 200,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 50,
            padding: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                hintText: 'Enter your Name',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(padding: EdgeInsets.all(15), child: Text('+254 ')),
                hintText: 'Enter your Phone Numer',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
