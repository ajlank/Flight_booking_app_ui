import 'package:flutter/material.dart';

class ReusableLeftCircle extends StatelessWidget {
  const ReusableLeftCircle({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 226, 220, 220),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
