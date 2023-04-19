import 'package:firstapp/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ColumnLayoutItem extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const ColumnLayoutItem({super.key, required this.firstText, required this.secondText, required this.alignment, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: Styles.headLineStyle3.copyWith(color: isColor==null? Colors.white : Colors.black)),
        SizedBox(height: 5,),
        Text(secondText, style: Styles.headLineStyle4.copyWith(color: isColor==null? Colors.white : Colors.grey)),
      ],
    );
  }
}