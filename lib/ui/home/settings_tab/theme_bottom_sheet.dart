import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem('Light'),
          SizedBox(
            height: 18,
          ),
          getUnSelectedItem('Dark'),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB7935F)),
        ),
        Spacer(),
        Icon(
          (Icons.check),
          color: Color(0xFFB7935F),
          size: 28,
          weight: 40,
        ),
      ],
    );
  }

  Widget getUnSelectedItem(String text) {
    return Text(
      text,
      //textAlign: TextAlign.start,
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFB7935F)),
    );
  }
}
