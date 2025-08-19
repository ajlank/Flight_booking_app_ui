import 'package:barcode_widget/barcode_widget.dart';
import 'package:flight_booking_app/res/media/media.dart';
import 'package:flight_booking_app/res/reusable_widget/ticket_column_text.dart';
import 'package:flight_booking_app/res/styles/styles.dart';
import 'package:flight_booking_app/res/utils/all_json.dart';
import 'package:flight_booking_app/res/widget/app_layout_widgets_builder.dart';
import 'package:flight_booking_app/res/widget/app_ticket_tabs.dart';
import 'package:flight_booking_app/res/widget/ticket_view.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  int ticketIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args["index"];
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text('Tickets'),
        centerTitle: true,
        backgroundColor: AppStyles.bgColor,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20, left: 20),
        children: [
          // Text(
          //   'Tickets',
          //   style: AppStyles.headlinesT1.copyWith(
          //     fontSize: 22,
          //     fontWeight: FontWeight.w500,
          //     color: Colors.black,
          //   ),
          // ),
          SizedBox(height: 20),
          AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
          SizedBox(height: 12),

          Container(
            padding: EdgeInsets.only(right: 26, left: 26, top: 28),
            child: TicketView(
              ticket: ticketList[ticketIndex],
              isColor: true,
              isApLayout: true,
            ),
          ),
          TicketColumnText(
            topText: 'Flutter DB',
            bottomText: 'Passenger',
            topText2: '5221 36869',
            bottomText2: 'passport',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29.4),
            child: AppLayoutWidgetsBuilder(
              randomDivider: 15,
              isAppLayout: true,
              isColor: false,
            ),
          ),
          TicketColumnText(
            topText: '366344 7273727389',
            bottomText: 'Number of E-ticket',
            topText2: 'B2SG28',
            bottomText2: 'Booking code',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29.4),
            child: AppLayoutWidgetsBuilder(
              randomDivider: 15,
              isAppLayout: true,
              isColor: false,
            ),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26, right: 26),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 12,
                      ),
                      color: Colors.white,
                      width: size.width * .82,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Image.asset(
                                      BaseImageMedia.visa_card_pic,
                                      scale: 11,
                                    ),
                                  ),
                                  SizedBox(width: 13),
                                  Text(
                                    '*** 2462',
                                    style: AppStyles.headlinesT1.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 1),
                              Padding(
                                padding: const EdgeInsets.only(left: 11.0),
                                child: Text(
                                  'Payment method',
                                  style: AppStyles.headlinesT1.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '\$249.99',
                                style: AppStyles.headlinesT1.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'price',
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
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              children: [
                Container(
                  // height: 100,
                  width: size.width * .82,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(12),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: BarcodeWidget(
                        height: 70,
                        data: 'https://www.google.com',
                        barcode: Barcode.code128(),
                        drawText: false,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 26, left: 26, top: 28),
            child: TicketView(
              ticket: ticketList[ticketIndex],
              isApLayout: true,
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
