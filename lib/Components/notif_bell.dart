import 'package:flutter/material.dart';

class NotificationBellIcon extends StatefulWidget {
  final int notificationCount;

  const NotificationBellIcon({super.key, required this.notificationCount});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationBellIconState createState() => _NotificationBellIconState();
}

class _NotificationBellIconState extends State<NotificationBellIcon> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          iconSize: 40, // Set the icon size as per your requirement
          onPressed: () {
            // Implement your notification button tap logic here
          },
        ),
        if (widget.notificationCount > 0)
          Positioned(
            right: 0,
            top: 5,
            child: Container(
              padding: const EdgeInsets.all(
                  8), // Increase padding for a bigger badge
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
              child: Text(
                widget.notificationCount.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16, // Increase font size for a bigger badge
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
