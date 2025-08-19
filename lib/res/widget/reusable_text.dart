import 'package:flight_booking_app/res/styles/styles.dart';
import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({
    super.key,
    required this.bigText,
    required this.smallText,
    required this.func,
  });

  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.t3),
        InkWell(
          onTap: func,
          child: Text(smallText, style: AppStyles.t4),
        ),
      ],
    );
  }
}
