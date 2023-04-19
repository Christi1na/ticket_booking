import 'package:firstapp/screens/ticket_view.dart';
import 'package:firstapp/utils/app_info_list.dart';
import 'package:firstapp/utils/app_layout.dart';
import 'package:firstapp/utils/app_styles.dart';
import 'package:firstapp/widgets/column_layout.dart';
import 'package:firstapp/widgets/fixed_circle.dart';
import 'package:firstapp/widgets/layout_builder_widget.dart';
import 'package:firstapp/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Text('Tickets', style: Styles.headLineStyle1,),
                SizedBox(height: 20,),
                TicketTabsItem(firstTab: 'Upcoming', secondTab: 'Previous'),
                SizedBox(height: 20,),

                Center(
                  child: TicketView(ticket: ticketList[0], isColor: true,),
                ),

                SizedBox(height: 1,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ColumnLayoutItem(firstText: 'Flutter DB', secondText: 'Passenger', alignment: CrossAxisAlignment.start, isColor: true,),
                          ColumnLayoutItem(firstText: '2323 343343', secondText: 'passport', alignment: CrossAxisAlignment.end, isColor: true,),
                          
                          
                        ],
                      ),
                      SizedBox(height: 20,),
                      
                      LayoutBuilderItem(dashColor: Colors.grey.shade200, sections: 15, width: 5,),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ColumnLayoutItem(firstText: '0055 444 77147', secondText: 'Number of E-ticket', alignment: CrossAxisAlignment.start, isColor: true,),
                          ColumnLayoutItem(firstText: 'B2SG28', secondText: 'Booking code', alignment: CrossAxisAlignment.end, isColor: true,)
                        ],
                      ),

                      SizedBox(height: 20,),

                      LayoutBuilderItem(dashColor: Colors.grey.shade200, sections: 15, width: 5,),
                      SizedBox(height: 20,),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/images/visa.png', width: 50,),
                                  Text(' *** 2462', style: Styles.headLineStyle3.copyWith(color: Colors.black))
                                ],
                              ),
                              SizedBox(height: 5,),
                              Text('Payment method', style: Styles.headLineStyle4,)
                            ],
                          ),
                          ColumnLayoutItem(firstText: '\$299.99', secondText: 'Price', alignment: CrossAxisAlignment.end, isColor: true,),

                        ],
                      ),

                      
                      // SizedBox(height: 20,)


                    ],
                  ),
                ),

                SizedBox(
                  // margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 1,
                  // width: size.width*1, 
                  // color: Colors.grey.shade200,
                  // child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey)),
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)
                    ),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo', 
                      barcode: Barcode.code128(),
                      drawText: false,
                      width: double.infinity,
                      color: Styles.textColor,
                      height: 70,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TicketView(ticket: ticketList[0] )

              ]
            ),
          ),
          Positioned(
            top: size.height*0.36,
            left: 20,
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {

              },
              child: FixedCircleItem(),
            ),
          ),

          Positioned(
            top: size.height*0.36,
            right: 20,
            child: FixedCircleItem(),
          )
          
        ],
      )
    );
  }
}