import 'package:covid_19_ui/models/pixel.dart';
import 'package:flutter/material.dart';

class CustomOptionSelect extends StatelessWidget {
  final OptionPixel? pixel;
  final int? currentIndex;
  final int? selectedIndex;
  const CustomOptionSelect(
      {Key? key, this.pixel, this.currentIndex, this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(pixel!.label);
    return Container(
      height: 50,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(width: 20),
          if (currentIndex == selectedIndex) Icon(Icons.check),
          SizedBox(
            width: 10,
          ),
          Text(pixel!.label!)
        ],
      ),
    );
  }
}
