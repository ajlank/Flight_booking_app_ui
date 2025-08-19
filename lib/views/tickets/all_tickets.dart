import 'package:flight_booking_app/res/utils/all_json.dart';
import 'package:flutter/material.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All tickets'), centerTitle: true),

      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => GestureDetector(
                      onTap: () {
                        var index = ticketList.indexOf(singleTicket);
                        Navigator.of(context).pushNamed(
                          AppRoutes.ticketScreen,
                          arguments: {"index": index},
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: TicketView(ticket: singleTicket),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
