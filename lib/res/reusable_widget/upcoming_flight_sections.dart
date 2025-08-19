import 'package:flight_booking_app/res/media/media.dart';
import 'package:flight_booking_app/res/styles/styles.dart';
import 'package:flutter/material.dart';

class UpcomingFlightSections extends StatelessWidget {
  const UpcomingFlightSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.white10, blurRadius: 5, spreadRadius: 2),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(BaseImageMedia.plane_sit_pic),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: 130,
              child: Text(
                "20% discount on the early booking of this flight. Don't miss",
                style: AppStyles.headlinesT1.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
