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
      body: ListView(
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
            padding: EdgeInsets.only(top: 30, left: 10),
            child: Text(
              "Explore the \nbeauty of Nature",
              style: GoogleFonts.playfairDisplay(
                  fontSize: 50, fontWeight: FontWeight.w700),
            ),
          ),
          // Upcoming trips section
          _buildTripSection(
              title: "Upcoming Trips",
              buttonText: "View All",
              imageUrls: ["assets/images/kelingking.jpg", "assets/images/kelingking.jpg", "assets/images/kelingking.jpg"]),

          // Popular trips section
          _buildTripSection(
              title: "Popular Trips",
              buttonText: "View All",
              imageUrls: ["assets/images/kelingking.jpg", "assets/images/kelingking.jpg", "assets/images/kelingking.jpg"]),

          // Recent trips section
          _buildTripSection(
              title: "Our Recent Trips",
              buttonText: "View All",
              imageUrls: ["assets/images/kelingking.jpg", "assets/images/kelingking.jpg", "assets/images/kelingking.jpg"]),

          //Custom tab bar with custom indicator section
          // Container(
          //   height: 30,
          //   margin: const EdgeInsets.only(top: 28, left: 10),
          //   child: DefaultTabController(
          //     length: 3,
          //     child: TabBar(
          //       labelPadding: EdgeInsets.only(left: 14, right: 14),
          //       tabs: [
          //         Tab(
          //             child: Container(
          //           child: Text("Upcoming"),
          //         )),
          //         Tab(
          //             child: Container(
          //           child: Text("Popular"),
          //         )),
          //         Tab(
          //             child: Container(
          //           child: Text("Recent"),
          //         )),
          //       ],
          //     ),
          //   ),
          // ),
        
        ],
      ),
    );
  }

// Reusable widget for each trip section
  Widget _buildTripSection({
    required String title,
    required String buttonText,
    required List<String> imageUrls,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 10),
      child: Column(
        children: [
          // Row with title and view all button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              TextButton(
                onPressed: () {}, // Handle view all button press
                child: Text(
                  buttonText,
                  style: GoogleFonts.lato(fontSize: 13, color: Colors.blue),
                ),
              ),
            ],
          ),

          // Container with horizontally scrollable images
          Container(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 200,
                  child: Image.asset(imageUrls[index], fit: BoxFit.cover),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
