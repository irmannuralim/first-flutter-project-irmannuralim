import 'package:flutter/material.dart';
import 'package:hello_word/check_dt.dart';
import 'package:hello_word/check_truck.dart';
import 'package:hello_word/expedition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'su-app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
    routes: {
      '/': (context) => Expedition(),
      '/check-dt': (context) => CheckDt(dt: "", gate: ""),
      '/check-truck': (context) => CheckTruck(dt: "", gate: ""),
    },
    );
  }
}
