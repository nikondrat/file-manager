import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class FirstItem extends StatelessWidget {
  final double transformWidth;
  const FirstItem({Key? key, this.transformWidth = 600}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width * .04)),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CircularPercentIndicator(
                radius: width > transformWidth ? width * .2 : width * .4,
                percent: 0.65,
                lineWidth: width > transformWidth ? width * .02 : width * .03,
                backgroundColor: Colors.grey.shade300,
                center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '65%',
                        style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: width > transformWidth
                                ? width * .04
                                : width * .07),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Used',
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold,
                            fontSize: width > transformWidth
                                ? width * .03
                                : width * .05),
                      ),
                    ]),
                progressColor: Colors.purple,
                circularStrokeCap: CircularStrokeCap.round,
                animation: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Space',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: width > transformWidth
                                ? width * .02
                                : width * .03),
                      ),
                      Text(
                        '256GB',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.bold,
                            fontSize: width > transformWidth
                                ? width * .03
                                : width * .05),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Used',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: width > transformWidth
                                ? width * .02
                                : width * .03),
                      ),
                      Text(
                        '180GB',
                        style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: width > transformWidth
                                ? width * .03
                                : width * .05),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ])),
    );
  }
}
