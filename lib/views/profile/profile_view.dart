import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 19, vertical: 40),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),

                  image: DecorationImage(
                    image: AssetImage(BaseImageMedia.homeLogo),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 11),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Book Tickets',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text('New york', style: TextStyle(fontSize: 10)),
                    SizedBox(height: 6),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 249, 240, 242),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 69, 76, 93),
                            ),
                            child: Icon(
                              Icons.shield_sharp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Premium status',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Text('Edit', style: TextStyle(color: Colors.blue)),
            ],
          ),
          SizedBox(height: 8),
          Divider(color: Colors.grey.shade300),
          SizedBox(height: 8),

          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 26, 83, 162),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      FluentIcons.lightbulb_circle_20_filled,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "You have 95 flights in a year",
                          style: TextStyle(
                            fontSize: 14,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -40,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(26),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 18,
                      color: const Color.fromARGB(255, 24, 143, 240),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Accumulated miles',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '192802',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Miles accrued',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                Text(
                  '11 June 2022',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Divider(),
          ProfileMileAccruedRes(
            firstText: '23 042',
            secondText: 'Miles',
            thirdText: 'Airline CO',
            fourthText: 'Received from',
          ),
          Divider(),
          ProfileMileAccruedRes(
            firstText: '24',
            secondText: 'Miles',
            thirdText: "McDonald's",
            fourthText: 'Received from',
          ),
          Divider(),
          ProfileMileAccruedRes(
            firstText: '52 340',
            secondText: 'Miles',
            thirdText: "MrTech",
            fourthText: 'Received from',
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('tapped');
                },
                child: Text(
                  'How to get more miles',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
