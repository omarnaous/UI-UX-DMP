import 'package:flutter/material.dart';

class RestoTopTile extends StatelessWidget {
  const RestoTopTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'المطاعم',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          'عرض الكل',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
