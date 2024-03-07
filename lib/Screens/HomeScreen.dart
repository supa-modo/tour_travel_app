import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tour_travel_flutter_app/models/recommended_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
//Page controller
  final _pageController = PageController(viewportFraction: 0.877);
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

                // Logo container
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset(
                    "assets/images/karuraFriends3.jpg", // Replace with your logo image path
                    fit: BoxFit.contain,
                  ),
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
            padding: const EdgeInsets.only(top: 30, left: 10),
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
          ),

          // Popular trips section
          _buildTripSection(
            title: "Popular Trips",
            buttonText: "View All",
          ),

          // Recent trips section
          _buildTripSection(
            title: "Our Recent Trips",
            buttonText: "View All",
          ),

          SizedBox(height: 25)
        ],
      ),
    );
  }

// Reusable _buildTripSection widget for each trip section
  Widget _buildTripSection({
    required String title,
    required String buttonText,
  }) {
    return Column(
      children: [
        // Row with title and view all button
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
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
        ),

        // Container with horizontally scrollable images in PageView
        Container(
          height: 218,
          margin: const EdgeInsets.only(top: 3),
          child: FutureBuilder(
            future: Future.wait(
              recommendations.map(
                  (item) => precacheImage(NetworkImage(item.image), context)),
            ),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 65, 164, 218),
                  ), // Show loading indicator
                );
              } else {
                return PageView(
                  physics: const BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    recommendations.length,
                    (int index) => Container(
                      margin: const EdgeInsets.only(right: 12),
                      width: 330,
                      height: 218,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(recommendations[index].image),
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 12,
                            left: 10,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaY: 19,
                                  sigmaX: 19,
                                ),
                                child: Container(
                                  height: 35,
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 14),
                                  alignment: Alignment.centerLeft,
                                  //Text and svg stacked on top of images
                                  child: Row(
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        "assets/svg/icon_location.svg",
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        recommendations[index].name,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),

        //Dots indicator below the images / Uses smoothPageIndicator library
        Padding(
          padding: const EdgeInsets.only(left: 28, top: 18),
          child: SmoothPageIndicator(
            controller: _pageController,
            count: recommendations.length,
            effect: const ExpandingDotsEffect(
                activeDotColor: Color.fromARGB(255, 57, 84, 97),
                dotColor: Color(0xFFababab),
                dotHeight: 5,
                dotWidth: 6,
                spacing: 5),
          ),
        ),
      ],
    );
  }
}
