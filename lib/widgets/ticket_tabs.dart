import 'package:firstapp/utils/app_layout.dart';
import 'package:flutter/material.dart';

class TicketTabsItem extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabsItem({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
          color: const Color(0xFFF4F6FD)
        ),

        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
              width: size.width*.44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(50)),
                  bottomLeft: Radius.circular(AppLayout.getHeight(50))
                )
              ),
              child: Center(child: Text(firstTab),),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50)
                )
              ),
              width: size.width*.44,
              child: Center(child: Text(secondTab)),
            )
          ]
        ),
      ),
    );
  }
}