import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'ui/views/home_page.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox("myBox");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme:ThemeData(primarySwatch: Colors.yellow),
        home: HomePage(),
        routes: const {});
  }
}
