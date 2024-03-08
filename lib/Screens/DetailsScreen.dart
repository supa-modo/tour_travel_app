import 'package:flutter/material.dart';
import 'package:tour_travel_flutter_app/Screens/BookTrip.dart';
import 'package:tour_travel_flutter_app/models/recommended_model.dart';

class DetailsPage extends StatefulWidget {
  final RecommendedModel tripDetails;

  const DetailsPage({super.key, required this.tripDetails});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          //Background image of the trip details
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: size.height * .7,
                width: double.infinity,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.network(widget.tripDetails.image),
                ),
              )),
          //Stacked Back Icon
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black87.withOpacity(.3),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          //Stacked More menu icon
          Positioned(
            top: 50,
            right: 20,
            child: GestureDetector(
              onTap: () => print("more menu"),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black87.withOpacity(.3),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          //Bottom linear gradient after Image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: size.height * .6,
              width: size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.topCenter,
                      colors: [Colors.white, Colors.white.withOpacity(.03)])),
            ),
          ),
          //Trip details
          Positioned(
              bottom: 50,
              left: 20,
              width: size.width * .9,
              child: SingleChildScrollView(
                //Trip Details Section
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Trip Details name
                        Text(
                          widget.tripDetails.name,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                        //Rating text and icon
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Rating",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Trip description text
                    Text(
                      widget.tripDetails.description,
                      style: const TextStyle(
                          color: Color(0xff686771),
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Favourite icon and Explore now text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Favourite icon
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(192, 212, 57, 57))),
                          child: const Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(192, 212, 57, 57),
                          ),
                        ),
                        const SizedBox(width: 15),
                        //Explore now button
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const BookTrip()), // Replace BookTrip with the actual screen you want to navigate to
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(192, 212, 57, 57),
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(192, 212, 57, 57)),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Center(
                                child: Text(
                                  "Explore Now",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
