import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final double dashWidth; // Width of each dash
  final double dashHeight; // Height of each dash
  final double spacing; // Spacing between each dash
  final Color color; // Color of the dashes
  final int dashCount; // Number of dashes

  const DashedLine({
    Key? key,
    this.dashWidth = 23,
    this.dashHeight = 2.0,
    this.spacing = 15.0,
    this.color = Colors.grey,
    this.dashCount = 15, // Number of dashes in the line
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final totalDashWidth = dashWidth + spacing;
    final maxDashCount = (screenWidth / totalDashWidth).floor();

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        maxDashCount,
            (index) => Row(
          children: [
            Container(
              width: dashWidth,
              height: dashHeight,
              color: color,
            ),
            if (index < maxDashCount - 1)
              SizedBox(width: spacing),
          ],
        ),
      ),
    );
  }
}
