import 'package:firstapp/utils/app_layout.dart';
import 'package:firstapp/utils/app_styles.dart';
import 'package:firstapp/widgets/double_text_widget.dart';
import 'package:firstapp/widgets/icon_text_widget.dart';
import 'package:firstapp/widgets/ticket_tabs.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text('What are \n you looking for?',
            style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          TicketTabsItem(firstTab: 'Airline tickets', secondTab: 'Hotels'),
          Gap(AppLayout.getHeight(25)),

          IconTextItem(text: 'Departure', icon: Icons.flight_takeoff_rounded,),
          Gap(AppLayout.getHeight(20)),
          IconTextItem(text: 'Arrival', icon: Icons.flight_land_rounded,),
          Gap(AppLayout.getHeight(25)),

          OutlinedButton(
            onPressed: () {}, 
            child: Text('Find tickets', style: Styles.textStyle.copyWith(color: Colors.white),),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xD91130CE)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
              padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 18))
            ),
          ),

          SizedBox(height: 45,),

          DoubleTextWidget(text: 'Upcoming Fligths',),

          SizedBox(height: 20,),

          // Container(
          //   height: 400,
          //   child:
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 400,
                width: size.width*0.42,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage('assets/images/sit.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(height: 15,),
                      
                    Text('20% discount on the early booking of this flight. Don\'t miss.', 
                      style: Styles.headLineStyle3.copyWith(fontSize: 20),
                    )
                  ],
                ),
              ),
                // Container(
                //   // color: Colors.white,
                //   // height: size.height*0.3,
                //   width: size.width*0.43,
                //   child: 
                  
                // ),

              Column(
                children: [
                  Stack(
                    // alignment: Alignment.topRight,
                    // fit: StackFit.passthrough,
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: 190,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Discount \nfor survey',
                              style: Styles.headLineStyle2.copyWith(color: Colors.white),
                              // textAlign: TextAlign.start,
                            ),
                            Gap(10),
                            Text('Take the survey about our services and get discount',
                              style: Styles.textStyle.copyWith(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ),

                      Positioned(
                        right: -45,
                        top: -45,
                        child: Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF189999),
                              width: 18,
                            ),
                            color: Colors.transparent
                          ),
                        )
                      )
                      

                    ],
                  ),
                  
                  Gap(20),

                  Container(
                    width: size.width*0.44,
                    height: 190,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xFFEC6545),
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Column(
                      children: [
                        Text('Take love',
                          style: Styles.headLineStyle2.copyWith(color: Colors.white),
                        ),
                        Gap(5),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 36)
                              ),
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 48)
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 36)
                              )
                            ]
                          )
                        )
                      ],
                    ),
                  )

                ],
              ),    
            ],
          ),
        ],
      )
    );
  }
}