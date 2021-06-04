import 'package:flutter/material.dart';
import 'package:zhetkiz_kz/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'Zhetkiz Kz';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}