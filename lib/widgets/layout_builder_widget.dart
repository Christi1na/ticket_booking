import 'package:flutter/material.dart';

class LayoutBuilderItem extends StatelessWidget {
  final Color? dashColor;
  final int sections;
  final double width;
  const LayoutBuilderItem({super.key, this.dashColor, required this.sections, required this.width});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints ) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate((constraints.constrainWidth()/sections).floor(), (index) => SizedBox(
            width: width,
            height: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: dashColor,
              )
            ),
          )),
        );
       }
    );
  }
}