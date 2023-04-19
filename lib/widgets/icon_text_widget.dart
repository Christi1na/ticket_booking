import 'package:firstapp/utils/app_layout.dart';
import 'package:flutter/material.dart';

class IconTextItem extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconTextItem({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(18), 
              vertical: AppLayout.getHeight(12)
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              color: Colors.white,
            ),
            child: Row(
              children: [
                // icon,
                Icon(icon, color: Color(0xFFBFC2DF),),
                SizedBox(width: AppLayout.getWidth(8),),
                Text(text)
              ],
            ),
          );
  }
}