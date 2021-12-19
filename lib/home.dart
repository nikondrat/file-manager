import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                ))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: CircularPercentIndicator(
                      backgroundColor: Colors.grey,
                      startAngle: 45,
                      radius: 40.w,
                      percent: 0.5,
                      lineWidth: 14,
                      circularStrokeCap: CircularStrokeCap.round,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
