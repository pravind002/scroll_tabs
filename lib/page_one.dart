import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          for (int i = 0; i < 3; i++) ...[
            Container(
              margin: const EdgeInsets.all(10),
              height: 500,
              width: Get.width,
              color: i %2==0 ?Colors.blueAccent:Colors.greenAccent,
            )
          ]
        ],
      ),
    );
  }
}
