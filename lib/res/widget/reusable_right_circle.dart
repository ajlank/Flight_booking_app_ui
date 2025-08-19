import 'package:flutter/material.dart';

class ReusableRightCircle extends StatelessWidget {
  const ReusableRightCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 226, 220, 220),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
