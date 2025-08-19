import 'package:flight_booking_app/res/styles/styles.dart';
import 'package:flutter/material.dart';

class TicketColumnText extends StatelessWidget {
  const TicketColumnText({
    super.key,
    required this.topText,
    required this.bottomText,
    required this.topText2,
    required this.bottomText2,
  });
  final String topText;
  final String bottomText;
  final String topText2;
  final String bottomText2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    topText,
                    style: AppStyles.headlinesT1.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    bottomText,
                    style: AppStyles.headlinesT1.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    topText2,
                    style: AppStyles.headlinesT1.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    bottomText2,
                    style: AppStyles.headlinesT1.copyWith(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
