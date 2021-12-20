import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      Colors.deepPurple.shade300,
      Colors.amberAccent,
      Colors.cyan,
      Colors.redAccent,
    ];
    double width = MediaQuery.of(context).size.width;

    Widget myCard = Container(
        child: Card(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(2.h),
            child: CircularPercentIndicator(
              backgroundColor: Theme.of(context).backgroundColor,
              radius: width < 600 ? 40.w : 30.w,
              percent: 0.7,
              lineWidth: width < 600 ? 4.w : 3.w,
              animation: true,
              animateFromLastPercent: true,
              rotateLinearGradient: true,
              linearGradient: LinearGradient(colors: colors),
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '70%',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline5!.color,
                        fontSize: 26.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Used',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline6!.color,
                        fontSize: 18.sp),
                  )
                ],
              ),
              circularStrokeCap: CircularStrokeCap.round,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.h),
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
                    SizedBox(
                      height: 0.4.h,
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
                    SizedBox(
                      height: 0.4.h,
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
    ));

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
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          children: [
            Column(children: [
              myCard,
              GridView.builder(
                  physics: const PageScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.folder,
                                color: colors[index],
                                size: 14.w,
                              ),
                            ],
                          )),
                    );
                  })
            ])
          ],
        ));
  }
}
