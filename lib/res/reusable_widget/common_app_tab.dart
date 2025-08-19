import 'package:flutter/material.dart';

class CommonAppTab extends StatelessWidget {
  const CommonAppTab({
    super.key,
    required this.size,
    required this.ticketsType,
    this.tabBorder = false,
    this.tabColor = false,
  });
  final double size;
  final String ticketsType;
  final bool tabBorder;
  final bool tabColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: tabColor == true ? Colors.white : Colors.transparent,
        borderRadius: tabBorder == false
            ? BorderRadius.horizontal(left: Radius.circular(50))
            : BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      width: size * .44,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(ticketsType)),
      ),
    );
  }
}
