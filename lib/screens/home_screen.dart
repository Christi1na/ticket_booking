import 'package:firstapp/screens/hotels_screen.dart';
import 'package:firstapp/screens/ticket_view.dart';
import 'package:firstapp/utils/app_info_list.dart';
import 'package:firstapp/utils/app_styles.dart';
import 'package:firstapp/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // const Padding(padding: EdgeInsets.only(top: 20)),
                const Gap(40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // const Padding(padding: EdgeInsets.only(bottom: 20)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning', 
                          style: Styles.headLineStyle3,
                        ),
                        // const Padding(padding: EdgeInsets.only(bottom: 5)),
                        // const SizedBox(height: 5,),
                        // Gap(),
                        const Gap(5),
                        Text(
                          'Book Tickets', 
                          style: Styles.headLineStyle1,
                        )
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: const Image(
                        image: AssetImage('assets/images/img_1.png'),
                        width: 50,
                        height: 50,
                      ),
                    )
                    
                  ],
                ),
                const Gap(25),
                Container(
                  // height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6FD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                      Text('Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                DoubleTextWidget(text: 'Upcoming Flights')
                
              ],
            ),
          ),
          const SizedBox(height: 15,),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: 
                ticketList.map((ticket) => TicketView(ticket: ticket,)).toList(),
            ),
          ),
          const Gap(20),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels', style: Styles.headLineStyle2,),
                InkWell(
                  onTap: () {
                    
                  },
                  child: Text('View all',
                    style: Styles.headLineStyle3.copyWith(color: Styles.primaryColor),
                  ),
                )
              ],
            ),
          ),

          const Gap(15),
          
          SingleChildScrollView(
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: 
                hotelList.map((e) => Hotels(hotel: e)).toList(),
            ),
          ),
        ],
      ),
      
      
    );
  }
}