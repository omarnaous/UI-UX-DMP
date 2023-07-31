import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    Key? key,
    required this.selected,
    required this.onChanged,
    required this.dataList,
  }) : super(key: key);

  final String selected;

  final Function(String? value) onChanged;
  final List<String> dataList;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: selected,
        isExpanded: false,
        isDense: true,

        icon: const Icon(
          Icons.keyboard_arrow_down,
        ), // Remove the arrow icon
        selectedItemBuilder: (context) {
          return List.generate(dataList.length, (index) {
            return Padding(
              // Add padding to the selected city text
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 180,
                child: Text(
                  selected,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          });
        },
        onChanged: (String? newValue) {
          onChanged(newValue);
        },
        elevation: 0,
        items: dataList.map((String city) {
          return DropdownMenuItem<String>(
            value: city,
            child: Text(
              city,
              style: const TextStyle(fontWeight: FontWeight.w800),
            ),
          );
        }).toList(),
      ),
    );
  }
}
