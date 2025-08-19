import 'package:flight_booking_app/res/reusable_widget/app_text_icon.dart';
import 'package:flight_booking_app/res/reusable_widget/buttons/find_tickets.dart';
import 'package:flight_booking_app/res/reusable_widget/upcoming_flight_sections.dart';
import 'package:flight_booking_app/res/styles/styles.dart';
import 'package:flight_booking_app/res/widget/app_ticket_tabs.dart';
import 'package:flight_booking_app/res/widget/reusable_text.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          Text(
            'What are\nyou looking for?',
            style: AppStyles.headlinesT1.copyWith(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          AppTicketTabs(firstTab: 'All tickets', secondTab: 'Hotels'),
          SizedBox(height: 20),
          AppTextIcon(icon: Icons.flight_takeoff, title: 'Departure'),
          SizedBox(height: 20),
          AppTextIcon(icon: Icons.flight_land, title: 'Arrival'),
          SizedBox(height: 20),
          FindTickets(),
          SizedBox(height: 20),
          ReusableText(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
            func: () {
              print('upcoming flights');
            },
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UpcomingFlightSections(),

              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 200,
                        width: size.width * .44,

                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 124, 212, 170),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Discount for survey',
                              style: AppStyles.headlinesT1.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 11),
                            Text(
                              'Take the survey about our services and get discount',
                              style: AppStyles.headlinesT1.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Positioned(
                        right: -50,
                        top: -45,
                        child: Container(
                          padding: EdgeInsets.all(38),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            border: Border.all(
                              width: 13,
                              color: const Color.fromARGB(255, 84, 190, 127),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 200,
                    width: size.width * .44,

                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 128, 59),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Love',
                          style: AppStyles.headlinesT1.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38),
                              ),
                              TextSpan(
                                text: '😊',
                                style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 38),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
