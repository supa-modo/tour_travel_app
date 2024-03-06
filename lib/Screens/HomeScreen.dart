import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
          //Home screen Navigation drawer and search
          Container(
            height: 57.6,
            margin: const EdgeInsets.only(top: 18.8, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //Drawer Icon button
                Container(
                  height: 50.6,
                  width: 50.6,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.5),
                    color: const Color.fromARGB(12, 10, 9, 40),
                  ),
                  child: SvgPicture.asset('assets/svg/icon_drawer.svg'),
                ),
                //Search Icon button
                Container(
                  height: 50.6,
                  width: 50.6,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.5),
                    color: const Color.fromARGB(12, 10, 9, 40),
                  ),
                  child: SvgPicture.asset('assets/svg/icon_search.svg'),
                ),
              ],
            ),
          ),
          //Explore nature title text
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Explore the \nbeauty of Nature",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 45, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Trips",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ))
                  ],
                ),
                Container(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 150,
                          child: Image.asset('assets/images/kelingking.jpg'),
                        );
                      },
                    )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
