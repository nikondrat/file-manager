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
                      backgroundColor: Theme.of(context).backgroundColor,
                      radius: 40.w,
                      percent: 0.7,
                      lineWidth: 5.w,
                      animation: true,
                      animateFromLastPercent: true,
                      rotateLinearGradient: true,
                      linearGradient: const LinearGradient(colors: [
                        Colors.purple,
                        Colors.amberAccent,
                        Colors.cyan,
                        Colors.redAccent,
                      ]),
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '70%',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .color,
                                fontSize: 8.w,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Used',
                            style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .color,
                                fontSize: 5.w),
                          )
                        ],
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Space',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              '256GB',
                              style: Theme.of(context).textTheme.subtitle2,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Used',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              '180GB',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(children: [
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200),
                  itemBuilder: (context, index) {
                    return const Card();
                  })
            ])
          ],
        ));
  }
}
