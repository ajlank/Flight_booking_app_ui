import 'package:flight_booking_app/res/styles/styles.dart';
import 'package:flight_booking_app/res/widget/app_layout_widgets_builder.dart';
import 'package:flight_booking_app/res/widget/dot.dart';
import 'package:flight_booking_app/res/widget/reusable_left_circle.dart';
import 'package:flight_booking_app/res/widget/reusable_right_circle.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool shouldWidth;
  final bool? isColor;
  final bool? isApLayout;
  const TicketView({
    super.key,
    required this.ticket,
    this.shouldWidth = false,
    this.isColor,
    this.isApLayout,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * .85,
      height: 190,
      child: Column(
        children: [
          Container(
            margin: shouldWidth
                ? EdgeInsets.only(right: 16, left: 16)
                : EdgeInsets.only(right: 0, left: 0),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isColor == null ? AppStyles.ticketBlue : Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['from']['code'],
                      style: isColor == null
                          ? AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                            )
                          : AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                    ),
                    Expanded(child: Container()),
                    Dot(isColor: isColor),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutWidgetsBuilder(
                              randomDivider: 6,
                              isAppLayout: isApLayout,
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.57,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? AppStyles.planeColor
                                    : Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Dot(isColor: isColor),
                    Expanded(child: Container()),
                    Text(
                      ticket['to']['code'],
                      style: isColor == null
                          ? AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                            )
                          : AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      ticket['from']['name'],
                      style: isColor == null
                          ? AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                            )
                          : AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      ticket['flying_time'],
                      style: isColor == null
                          ? AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                            )
                          : AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      ticket['to']['name'],
                      style: isColor == null
                          ? AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                            )
                          : AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            height: 20,
            color: isColor == null ? AppStyles.ticketOrange : Colors.white,
            margin: EdgeInsets.only(right: 16, left: 16),
            child: Row(
              children: [
                ReusableLeftCircle(),
                Expanded(
                  child: AppLayoutWidgetsBuilder(
                    randomDivider: 10,
                    isAppLayout: true,
                  ),
                ),
                ReusableRightCircle(),
              ],
            ),
          ),
          Container(
            margin: shouldWidth
                ? EdgeInsets.only(right: 16, left: 16)
                : EdgeInsets.only(right: 0, left: 0),
            padding: EdgeInsets.only(left: 16, right: 16, top: 38.1),
            decoration: BoxDecoration(
              color: isColor == null ? AppStyles.ticketOrange : Colors.white,
              // borderRadius: BorderRadius.only(
              //   bottomLeft: Radius.circular(21),
              //   bottomRight: Radius.circular(21),
              // ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      ticket['date'],
                      style: isColor == null
                          ? AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w600,
                            )
                          : AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                    ),
                    Expanded(child: Container()),

                    SizedBox(
                      width: 120,
                      child: Text(
                        ticket['departure_time'],
                        textAlign: TextAlign.start,
                        style: isColor == null
                            ? AppStyles.headlinesT1.copyWith(
                                fontWeight: FontWeight.w600,
                              )
                            : AppStyles.headlinesT1.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                      ),
                    ),

                    Expanded(child: Container()),
                    Text(
                      ticket['number'].toString(),
                      style: isColor == null
                          ? AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w600,
                            )
                          : AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'Date',
                      style: isColor == null
                          ? AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                            )
                          : AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      'Departure time',
                      style: isColor == null
                          ? AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                            )
                          : AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                    ),

                    Expanded(child: Container()),
                    Text(
                      'Number',
                      style: isColor == null
                          ? AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                            )
                          : AppStyles.headlinesT1.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
