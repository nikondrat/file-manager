import 'package:file_manager/grid_items.dart';
import 'package:file_manager/first_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'File Manager',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: IconButton(
                onPressed: () {},
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.black,
                )),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Column(
          children: [
            const FirstItem(),
            Expanded(
                child: GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            maxCrossAxisExtent: 200),
                    itemBuilder: (context, index) {
                      return GridItems(
                        index: index,
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
