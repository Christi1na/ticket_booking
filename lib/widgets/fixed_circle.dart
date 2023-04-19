import 'package:firstapp/utils/app_styles.dart';
import 'package:flutter/material.dart';

class FixedCircleItem extends StatelessWidget {
  const FixedCircleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: Styles.textColor),
        color: Colors.transparent
      ),
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Styles.textColor,
        ),
      ),
    );
  }
}