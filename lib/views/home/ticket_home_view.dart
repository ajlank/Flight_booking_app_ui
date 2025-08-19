import 'package:flight_booking_app/controller/bottom_nav_bar_controller.dart';
import 'package:flight_booking_app/views/home/home_screen.dart';
import 'package:flight_booking_app/views/profile/profile_view.dart';
import 'package:flight_booking_app/views/searchscreen/search_screen.dart';
import 'package:flight_booking_app/views/tickets/ticket_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomeView extends StatelessWidget {
  MyHomeView({super.key});

  //dependency injection
  final BottomNavBarController controller = Get.put(BottomNavBarController());

  var pageList = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: pageList[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueGrey,
          showSelectedLabels: false,
          unselectedItemColor: const Color(0xFF526400),
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeSelectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FluentIcons.home_12_regular),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentIcons.search_12_regular),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentIcons.ticket_horizontal_20_regular),
              label: 'Ticket',
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentIcons.person_12_regular),
              label: 'Person',
            ),
          ],
        ),
      );
    });
  }
}
