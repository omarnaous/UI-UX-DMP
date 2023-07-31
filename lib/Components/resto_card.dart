// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RestaurantCard extends StatefulWidget {
  const RestaurantCard({
    Key? key,
    required this.restoName,
    required this.minutes,
    required this.image,
  }) : super(key: key);

  final String restoName;
  final String minutes;
  final String image;

  @override
  // ignore: library_private_types_in_public_api
  _RestaurantCardState createState() => _RestaurantCardState();
}

class _RestaurantCardState extends State<RestaurantCard> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            Card(
              margin: EdgeInsets.only(
                top: screenHeight * 0.01,
                bottom: screenHeight * 0.024,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit
                          .cover, // Use BoxFit.cover to fill the container
                      height: screenHeight *
                          0.2, // Set the desired height of the image
                      width: screenWidth,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isFavorite = !_isFavorite;
                        });
                      },
                      child: Icon(
                        _isFavorite ? Icons.favorite : Icons.favorite_border,
                        size: 30,
                        color: _isFavorite ? Colors.red : Colors.white,
                      ),
                    ),
                  ),
                  // Like Icon Logic and positioning
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: screenWidth * 0.08,
              child: GestureDetector(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ElevatedButton(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.02,
                      right: screenWidth * 0.02,
                      top: screenWidth * 0.01,
                      bottom: screenWidth * 0.01,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget
                              .minutes, // Replace "5" with your desired number of minutes
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Text(
                          "دقائق", // Replace "5" with your desired number of minutes
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              )),
            ),
            // minutes Button logic and position
          ],
        ),
        Row(
          children: [
            Text(
              widget.restoName,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ],
    );
  }
}
