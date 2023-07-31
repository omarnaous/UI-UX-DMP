// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class OrderNowCard extends StatefulWidget {
  const OrderNowCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  State<OrderNowCard> createState() => _OrderNowCardState();
}

class _OrderNowCardState extends State<OrderNowCard> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        // changes border radius of corners of the card
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
              height: screenHeight * 0.2, // Set the desired height of the image
              width: screenWidth,
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            // setting the Text at the top right
            child: GestureDetector(
                onTap: () {},
                child: const Text(
                  "استمتع بألذ وأشهى \nوجبة تقليدية عربية مع\n وليمة الكبسة!",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            // Set the order button to bottom left
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        100), // Adjust the value as needed
                  ),
                ),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "اطلب الآن",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
