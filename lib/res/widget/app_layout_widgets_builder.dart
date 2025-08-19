import 'package:flutter/material.dart';

class AppLayoutWidgetsBuilder extends StatelessWidget {
  const AppLayoutWidgetsBuilder({
    super.key,
    required this.randomDivider,
    this.isColor,
    this.isAppLayout,
  });
  final int randomDivider;
  final bool? isColor;
  final bool? isAppLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            (constraints.constrainWidth() / randomDivider).floor(),
            (index) {
              return SizedBox(
                width: 2.1,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: isAppLayout == null
                        ? Colors.white
                        : Colors.blueAccent,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
