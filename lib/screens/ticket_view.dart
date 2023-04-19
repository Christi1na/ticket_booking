import 'package:firstapp/utils/app_layout.dart';
import 'package:firstapp/utils/app_styles.dart';
import 'package:firstapp/widgets/column_layout.dart';
import 'package:firstapp/widgets/layout_builder_widget.dart';
import 'package:firstapp/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(169),
      child: Container(
        margin: EdgeInsets.only(left: AppLayout.getHeight(isColor==null? 20 : 0)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(20)), topRight: Radius.circular(AppLayout.getHeight(20))),
                color: isColor==null ? Color(0xFF526799): Colors.white,
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${ticket['from']['code']}', style: Styles.headLineStyle3.copyWith(color: isColor==null ? Colors.white : Colors.black),),
                      const Spacer(),
                      ThickContainer(color: isColor==null ? Colors.white : Colors.blue,),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilderItem(sections: 5, width: 3, dashColor: isColor==null? Colors.white : Colors.blue,)
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5, 
                              child: Icon(Icons.local_airport_rounded, color: isColor==null ? Colors.white : Colors.blue,),
                            ),
                          )
                          
                        ],
                      )),
                      
                      ThickContainer(color: isColor==null ? Colors.white : Colors.blue,),
                      const Spacer(),
                      Text('${ticket['to']['code']}', style: Styles.headLineStyle3.copyWith(color: isColor==null ? Colors.white : Colors.black),)
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(5)),
                  Row(
                    children: [
                      Text('${ticket['from']['name']}', style: Styles.headLineStyle4.copyWith(color: isColor==null? Colors.white : Colors.grey.shade500),),
                      const Spacer(),
                      Text(ticket['flying_time'], style: Styles.headLineStyle3.copyWith(color: isColor==null? Colors.white : Colors.grey.shade500),),
                      const Spacer(),
                      Text('${ticket['to']['name']}', style: Styles.headLineStyle4.copyWith(color: isColor==null? Colors.white : Colors.grey.shade500),)

                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor==null? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppLayout.getHeight(isColor==null?20:0)),
                  bottomRight: Radius.circular(AppLayout.getHeight(isColor==null?20:0))
                )
              ),
              // padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(10),
                        height: AppLayout.getHeight(20),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(AppLayout.getHeight(20)), bottomRight: Radius.circular(AppLayout.getHeight(20))),
                            color: Colors.white,

                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: LayoutBuilderItem(dashColor: isColor==null? Colors.white : Colors.grey.shade200, sections: 15, width: 5,)
                        )
                      ),

                      SizedBox(
                        width: AppLayout.getWidth(10),
                        height: AppLayout.getHeight(20),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(20)), bottomLeft: Radius.circular(AppLayout.getHeight(20))),
                            color: Colors.white,

                          ),
                        ),
                      ),
                      
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: AppLayout.getHeight(10), 
                      left: AppLayout.getHeight(16), 
                      right: AppLayout.getHeight(16), 
                      bottom: AppLayout.getHeight(16)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayoutItem(firstText: ticket['date'], secondText: 'Date', alignment: CrossAxisAlignment.start, isColor: isColor==null ? null: true,),
                        ColumnLayoutItem(firstText: ticket['departure_time'], secondText: 'Departure time', alignment: CrossAxisAlignment.center, isColor: isColor==null ? null: true,),
                        ColumnLayoutItem(firstText: '${ticket['number']}', secondText: 'Number', alignment: CrossAxisAlignment.end, isColor: isColor==null ? null: true,),
                      ],
                    ),
                  )
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}