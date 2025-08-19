import 'package:flight_booking_app/res/utils/app_routes.dart';
import 'package:flutter/material.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel, this.index = 0});
  final int index;
  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRoutes.hotelDetails,
          arguments: {"index": index, "hotel": hotel},
        );
      },
      child: Container(
        height: 300,
        width: size.width * 0.6,
        margin: EdgeInsets.only(right: 17),
        decoration: BoxDecoration(
          color: AppStyles.ticketBlue,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(hotel['image']),
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                hotel['place'],
                style: AppStyles.headlinesT1.copyWith(
                  color: const Color.fromARGB(255, 203, 176, 139),
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                hotel['destination'],
                style: AppStyles.headlinesT1.copyWith(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                "\$${hotel['price']}/night",
                style: AppStyles.headlinesT1.copyWith(
                  color: const Color.fromARGB(255, 203, 176, 139),
                  fontSize: 22,
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
