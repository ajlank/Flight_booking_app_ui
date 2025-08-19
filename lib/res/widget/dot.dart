import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  const Dot({super.key, this.isColor});
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.5,
          color: isColor == true ? Colors.blueAccent : Colors.white,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
