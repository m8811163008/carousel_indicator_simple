library carousel_indicator_simple;

import 'package:flutter/material.dart';

class CarouselIndicatorSimple extends StatelessWidget {
  const CarouselIndicatorSimple({
    super.key,
    required this.itemsCount,
    required this.activeIndex,
    this.activeIndicatorColor = Colors.white,
    this.inactiveIndicatorColor,
  });

  final int itemsCount;
  final int activeIndex;
  final Color activeIndicatorColor;
  final Color? inactiveIndicatorColor;

  @override
  Widget build(BuildContext context) {
    final children = List<Widget>.generate(
      itemsCount * 2 -
          1, // Create enough space for the indicators and the SizedBoxes
      (index) {
        // For even indices, return an indicator
        if (index % 2 == 0) {
          final itemIndex = index ~/ 2;
          return itemIndex == activeIndex
              ? ActiveIndicator(
                  color: activeIndicatorColor,
                )
              : CirclePin(
                  color: inactiveIndicatorColor ??
                      const Color(0xff0C0C0C).withOpacity(0.3),
                );
        }
        // For odd indices, return a SizedBox
        else {
          return const SizedBox(width: 8.0);
        }
      },
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: children,
    );
  }
}

class CirclePin extends StatelessWidget {
  const CirclePin({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 4,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}

class ActiveIndicator extends StatelessWidget {
  const ActiveIndicator({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 6,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
