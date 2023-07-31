import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white, // Set the background color to white
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: const Padding(
        padding: EdgeInsets.all(5.0),
        child: TextField(
          decoration: InputDecoration(
            hintTextDirection: TextDirection.rtl,
            hintText: 'ابحث عن وليمتك المفضلة', // Search your walima in Arabic
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
            suffixIcon: Icon(
              Icons.filter_list,
              color: Colors.black,
              size: 30,
            ),
            border: InputBorder.none, // Remove the border lines
          ),
        ),
      ),
    );
  }
}
