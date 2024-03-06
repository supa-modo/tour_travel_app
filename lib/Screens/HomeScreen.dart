import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        physics: const BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            height: 57.6,
            margin: const EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
            child: Row(
              children: <Widget>[
                Container(
                  height: 57.6,
                  width: 57.6,
                  padding: EdgeInsets.all(18),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(9.6)),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
