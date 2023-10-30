import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 3; i++) ...[
          Container(
            margin: const EdgeInsets.all(10),
            height: 500,
            width: Get.width,
            color: i %2==0 ?Colors.orangeAccent:Colors.yellowAccent,
          )
        ]
      ],
    );
  }
}
