import 'package:flight_booking_app/res/utils/app_routes.dart';
import 'package:flight_booking_app/views/home/ticket_home_view.dart';
import 'package:flight_booking_app/views/hotels/all_hotels.dart';
import 'package:flight_booking_app/views/hotels/hotel_details.dart';
import 'package:flight_booking_app/views/tickets/all_tickets.dart';
import 'package:flight_booking_app/views/tickets/ticket_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight booking',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white10),
        brightness: Brightness.light,
      ),
      home: MyHomeView(),
      routes: {
        AppRoutes.allTickets: (context) => AllTickets(),
        AppRoutes.ticketScreen: (context) => TicketScreen(),
        AppRoutes.allHotels: (context) => AllHotels(),
        AppRoutes.hotelDetails: (context) => HotelDetails(),
      },
    );
  }
}
