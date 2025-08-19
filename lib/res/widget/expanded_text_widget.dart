import 'package:flight_booking_app/controller/expanded_text_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandedTextWidget extends StatelessWidget {
  ExpandedTextWidget({super.key, required this.text});
  final String text;

  final ExpandedTextController controller = Get.put(ExpandedTextController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var textWidget = Text(
        text,
        maxLines: controller.isExpanded.value ? null : 3,
        overflow: controller.isExpanded.value
            ? TextOverflow.visible
            : TextOverflow.ellipsis,
      );
      return Column(
        children: [
          textWidget,
          GestureDetector(
            onTap: () {
              controller.setToggle();
            },
            child: Text(
              controller.isExpanded.value ? 'Show less' : "Show more",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      );
    });
  }
}
