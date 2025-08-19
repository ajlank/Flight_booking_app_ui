import 'package:flight_booking_app/res/reusable_widget/common_app_tab.dart';
import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({
    super.key,
    required this.firstTab,
    required this.secondTab,
  });

  final String firstTab;
  final String secondTab;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(44),
        color: Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          CommonAppTab(
            size: size.width,
            ticketsType: firstTab,
            tabColor: false,
          ),
          CommonAppTab(
            size: size.width,
            ticketsType: secondTab,
            tabColor: true,
            tabBorder: true,
          ),
        ],
      ),
    );
  }
}
