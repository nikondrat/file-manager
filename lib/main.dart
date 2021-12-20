import 'package:file_manager/home.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: ThemeData(
            canvasColor: Colors.grey.shade100,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            backgroundColor: Colors.grey,
            textTheme: TextTheme(
                headline5: TextStyle(color: Colors.purple.shade700),
                headline6: TextStyle(color: Colors.black54, fontSize: 18.sp),
                subtitle2: TextStyle(
                    color: Colors.purple.shade700,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold)),
            cardTheme: CardTheme(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black))),
        darkTheme: ThemeData(
            canvasColor: Colors.grey.shade900,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            backgroundColor: Colors.grey.withAlpha(140),
            textTheme: TextTheme(
                headline5: const TextStyle(color: Colors.white),
                headline6:
                    TextStyle(color: Colors.grey.shade400, fontSize: 18.sp),
                subtitle2: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold)),
            cardTheme: CardTheme(
                elevation: 2,
                color: Colors.grey.shade800,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24))),
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.white))),
      );
    });
  }
}
