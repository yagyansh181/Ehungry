import 'package:flutter/material.dart';
import 'package:soothing/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'soothing',
      theme: ThemeData(
        primaryColor: Color(0xfff4f0fb),
        secondaryHeaderColor: Color(0xfffb0a1c),
      ),
      home: homepage(),
    );
  }
}
