import 'package:flight_booking_app/res/utils/hotel_json.dart';
import 'package:flight_booking_app/res/widget/hotel.dart';
import 'package:flutter/material.dart';

class AllHotels extends StatefulWidget {
  const AllHotels({super.key});

  @override
  State<AllHotels> createState() => _AllHotelsState();
}

class _AllHotelsState extends State<AllHotels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All hotels')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,

              childAspectRatio: 0.7,
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              var hotel = hotelList[index];

              return Hotel(hotel: hotel, index: index);
            },
          ),
        ),
      ),
    );
  }
}
