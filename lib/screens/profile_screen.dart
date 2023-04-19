import 'package:firstapp/utils/app_layout.dart';
import 'package:firstapp/utils/app_styles.dart';
import 'package:firstapp/widgets/big_circle.dart';
import 'package:firstapp/widgets/column_layout.dart';
import 'package:firstapp/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 86,
                  height: 86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('assets/images/img_1.png'),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                Gap(10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Book Tickets', style: Styles.headLineStyle1,),
                    Gap(2),

                    Text('New-York', style: Styles.headLineStyle4,),
                    Gap(8),
                    Container(
                      padding: EdgeInsets.only(right: 10, top: 3, bottom: 3, left: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFFEF4F3),

                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF526799),

                            ),
                            child: Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15,),
                          ),
                          Gap(10),
                          Text('Premium status', style: TextStyle(color: Color(0xFF526799), fontWeight: FontWeight.w500),)
                        ],
                      ),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        
                      },
                      child: Text('Edit', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),)
                    )
                  ],
                )
              ],
            ),
            Gap(8),
            Divider(color: Colors.grey.shade300,),
            Gap(8),
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Styles.primaryColor
                  ),
                ),
                BigCircleItem(color: Color(0xFF264CD2)),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(13),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white
                        ),
                        child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, size: 27, color: Styles.primaryColor,),
                      ),
                      Gap(12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('You\'ve got a new award', style: Styles.headLineStyle2.copyWith(color: Colors.white)),
                          Text('You\'ve got a new award', style: Styles.headLineStyle3.copyWith(color: Colors.white.withOpacity(0.9))),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Gap(25),            
            Text('Accumulated miles', style: Styles.headLineStyle2,),
            Gap(15),            
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Styles.bgColor,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200, blurRadius: 10, spreadRadius: 10)
                ],
                // border: Border.all(color: Colors.black, width: 1)
              ),
              child: Column(
                children: [
                  Gap(15),
                  Center(
                    child: Text('192802', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w600),),
                  ),
                  // Text('data'),
                  Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Miles occured', style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                      Text('23 May 2022', style: Styles.headLineStyle4.copyWith(fontSize: 16)),
                    ],
                  ),
                  Gap(10),
                  Divider(color: Colors.grey.shade300, height: 1,),
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayoutItem(firstText: '23 042', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: true,),
                      ColumnLayoutItem(firstText: 'Airline CO', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: true,),
                      
                      // Column(
                      //   children: [
                      //     Text('23 042'),
                      //     Text('data')
                      //   ],
                      // )
                    ],
                  ),

                  Gap(10),
                  LayoutBuilderItem(sections: 12, width: 5, dashColor: Colors.grey.shade300,),
                  Gap(10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayoutItem(firstText: '24', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: true,),
                      ColumnLayoutItem(firstText: 'McDonald\'s', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: true,),
                    ],
                  ),
                  Gap(10),
                  LayoutBuilderItem(sections: 12, width: 5, dashColor: Colors.grey.shade300,),
                  Gap(10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnLayoutItem(firstText: '52 340', secondText: 'Miles', alignment: CrossAxisAlignment.start, isColor: true,),
                      ColumnLayoutItem(firstText: 'Exuma', secondText: 'Received from', alignment: CrossAxisAlignment.end, isColor: true,),
                    ],
                  ),
                  Gap(20),
                  
                ],
              )
            ),
            Gap(20),
            Center(
              child: InkWell(
                onTap: () {
                        
                },
                child: Text('How to get more miles', style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}