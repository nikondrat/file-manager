import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Item {
  String title = '';
  int dataNum = 0;
  int percent = 0;
  Item(this.title, this.dataNum, this.percent);
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<Color> colors = [
      Colors.deepPurple.shade300,
      Colors.amberAccent,
      Colors.cyan,
      Colors.redAccent,
    ];
    List<Item> items = [
      Item('Photos', 4524, 25),
      Item('Songs', 250, 75),
      Item('Videos', 320, 85),
      Item('Documents', 1200, 55)
    ];
    Card myCard = Card(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(height * .02),
            child: CircularPercentIndicator(
              backgroundColor: Theme.of(context).backgroundColor,
              radius: width < 600 ? width * 0.4 : 250,
              percent: 0.7,
              lineWidth: width < 600 ? 12 : 18,
              animation: true,
              animateFromLastPercent: true,
              rotateLinearGradient: true,
              linearGradient: LinearGradient(colors: colors),
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    '70%',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline5!.color,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                  ),
                  AutoSizeText(
                    'Used',
                    style: TextStyle(
                        color: Theme.of(context).textTheme.headline6!.color,
                        fontSize: 20),
                  )
                ],
              ),
              circularStrokeCap: CircularStrokeCap.round,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: height * .02),
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
                      height: 0.4,
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
                      height: 0.4,
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
    );
    AppBar appBar = AppBar(
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
    );

    GridView gridViewElements = GridView.builder(
        physics: const PageScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300),
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: EdgeInsets.all(width < 600 ? 12 : width * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.folder,
                    color: colors[index],
                    size: width < 600 ? width * 0.18 : 60,
                  ),
                  AutoSizeText(
                    items[index].title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.subtitle1!.color),
                  ),
                  AutoSizeText(
                    items[index].dataNum.toString(),
                    style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).textTheme.headline6!.color),
                  ),
                  LinearPercentIndicator(
                    progressColor: colors[index],
                    percent: items[index].percent / 100,
                    animation: true,
                    leading: AutoSizeText(
                      items[index].percent.toString() + '%',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).textTheme.subtitle1!.color),
                    ),
                  )
                ],
              ),
            ),
          );
        });

    ListView content = ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      children: [myCard, gridViewElements],
    );

    return Scaffold(appBar: appBar, body: content);
  }
}
