import 'package:flutter/material.dart';

class ProfileMileAccruedRes extends StatelessWidget {
  const ProfileMileAccruedRes({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.fourthText,
  });

  final String firstText;
  final String secondText;

  final String thirdText;
  final String fourthText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(firstText, style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(height: 7),
              Text(secondText, style: TextStyle(fontWeight: FontWeight.w300)),
            ],
          ),
          Column(
            children: [
              Text(thirdText, style: TextStyle(fontWeight: FontWeight.w500)),
              SizedBox(height: 7),
              Text(fourthText, style: TextStyle(fontWeight: FontWeight.w300)),
            ],
          ),
        ],
      ),
    );
  }
}
