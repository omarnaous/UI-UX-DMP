import 'package:dmptest/Components/cutom_dropdown.dart';
import 'package:dmptest/Components/notif_bell.dart';
import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({
    super.key,
  });

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  List<String> saudiArabiaCities = [
    'شارع الملك فهد, الرياض',
    'شارع التحلية, جدة',
    'شارع العزيزية, مكة المكرمة',
    'شارع الأمير محمد بن عبدالعزيز, المدينة المنورة',
    'شارع الملك فهد, الدمام',
    'شارع العباس بن عبد المطلب, الطائف',
    'شارع الملك عبدالعزيز, بريدة',
    'شارع الأمير نايف بن عبدالعزيز, تبوك',
    'شارع الملك فهد, أبها',
    'شارع الأمير سلطان, خميس مشيط',
    // Add more streets and cities here
  ];

  // Selected City that can change after each selection
  String selectedCity = 'شارع الملك فهد, الرياض';
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // We can change this icon to an image in profile
        const Card(
          shape: CircleBorder(),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.person,
              size: 30,
            ),
          ),
        ),
        // Order to with custom city dropdown that can be customized
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'توصيل إلى',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: CustomDropDownButton(
                  selected: selectedCity,
                  dataList: saudiArabiaCities,
                  onChanged: (newValue) {
                    setState(() {
                      selectedCity = newValue!;
                    });
                  },
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        // Notifications Bell Icon
        const NotificationBellIcon(
          notificationCount: 1,
        )
      ],
    );
  }
}
