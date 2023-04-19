import 'package:firstapp/utils/app_layout.dart';
import 'package:firstapp/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key, required this.hotel});
  final Map<String, dynamic> hotel;
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.60,
      height: AppLayout.getHeight(350),
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(AppLayout.getHeight(16)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          color: Styles.primaryColor
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // width: 215,
              height: AppLayout.getHeight(180),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                // color: Colors.amber
                image: DecorationImage(
                  image: AssetImage("assets/images/${hotel['image']}"),
                  fit: BoxFit.cover
                ), 
              ),
              // child: const Image(image: AssetImage('assets/images/one.png')),
            ),

            SizedBox(height: AppLayout.getHeight(10),),
            
            Text('${hotel['place']}', 
              style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
            ),
            Gap(AppLayout.getHeight(5)),
            Text('${hotel['destination']}',
              style: Styles.headLineStyle3.copyWith(color: Colors.white),
            ),
            Gap(AppLayout.getHeight(8)),
            Text('\$${hotel['price']}/night',
              style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
            )
          ],
        ),
      ),
    );
    
  }
}