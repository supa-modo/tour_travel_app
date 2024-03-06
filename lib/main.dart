import 'package:flutter/material.dart';
import 'package:tour_travel_flutter_app/Screens/HomeScreen.dart';
import 'package:tour_travel_flutter_app/Screens/OnboardingScreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: OnboardingScreen(),
      home: HomeScreen(),
    );
  }
}