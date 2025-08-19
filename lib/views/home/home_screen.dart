import 'package:flight_booking_app/res/media/media.dart';
import 'package:flight_booking_app/res/styles/styles.dart';
import 'package:flight_booking_app/res/utils/all_json.dart';
import 'package:flight_booking_app/res/utils/app_routes.dart';
import 'package:flight_booking_app/res/utils/hotel_json.dart';
import 'package:flight_booking_app/res/widget/hotel.dart';
import 'package:flight_booking_app/res/widget/reusable_text.dart';
import 'package:flight_booking_app/res/widget/ticket_view.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good morning', style: AppStyles.t1),
                        Text('Book Tickets', style: AppStyles.t2),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                          image: AssetImage(BaseImageMedia.homeLogo),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      Icon(FluentIcons.search_28_regular),
                      SizedBox(width: 10),
                      Text('Search'),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                ReusableText(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',

                  func: () =>
                      Navigator.of(context).pushNamed(AppRoutes.allTickets),
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .take(2)
                        .map(
                          (singleTicket) => GestureDetector(
                            onTap: () {
                              final index = ticketList.indexOf(singleTicket);
                              Navigator.of(context).pushNamed(
                                AppRoutes.ticketScreen,
                                arguments: {'index': index},
                              );
                            },
                            child: TicketView(
                              ticket: singleTicket,
                              shouldWidth: true,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(height: 30),
                ReusableText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: () {
                    Navigator.of(context).pushNamed(AppRoutes.allHotels);
                  },
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .take(2)
                        .map((hotel) => Hotel(hotel: hotel))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
