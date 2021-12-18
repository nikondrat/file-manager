import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  final int index;
  const GridItems({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontSize: width > 600 ? width * .02 : width * .04,
      fontWeight: FontWeight.bold,
    );
    return Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.folder,
                size: width > 600 ? width * .06 : width * .14,
                color: index == 0
                    ? Colors.purple
                    : index == 1
                        ? Colors.amberAccent
                        : index == 2
                            ? Colors.lightBlueAccent
                            : Colors.redAccent,
              ),
              Text(
                index == 0
                    ? 'Photos'
                    : index == 1
                        ? 'Songs'
                        : index == 2
                            ? 'Videos'
                            : 'Documents',
                style: textStyle,
              )
            ],
          ),
        ));
  }
}
