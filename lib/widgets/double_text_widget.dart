import 'package:firstapp/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DoubleTextWidget extends StatelessWidget {
  final String text;
  const DoubleTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Styles.headLineStyle2,),
        InkWell(
          // onPressed: () {}, 
          child: Text('View all', style: Styles.textStyle.copyWith(color: Styles.primaryColor),)
        )

      ],
    );
  }
}