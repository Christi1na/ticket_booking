import 'package:flutter/material.dart';

class BigCircleItem extends StatelessWidget {
  final Color color;
  const BigCircleItem({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -45,
      top: -45,
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: color,
            width: 18,
          ),
          color: Colors.transparent
        ),
      )
    );
  }
}