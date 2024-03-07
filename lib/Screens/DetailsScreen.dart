import 'package:flutter/material.dart';
import 'package:tour_travel_flutter_app/models/recommended_model.dart';

class DetailsPage extends StatefulWidget {
  final RecommendedModel tripDetails;

  const DetailsPage({Key? key, required this.tripDetails}) : super(key: key);

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
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: size.height,
                width: double.infinity,
                child: FittedBox(
                  child: Image.asset(widget.tripDetails.image),
                  fit: BoxFit.cover,
                ),
              )),
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
        ],
      ),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       // Display details about the selected trip
      //       Text("Trip Name: ${widget.tripDetails.name}"),
      //       Text("Description: ${widget.tripDetails.description}"),
      //       // Add more details as needed
      //     ],
      //   ),
      // ),
    );
  }
}
