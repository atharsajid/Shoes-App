import 'package:flutter/material.dart';
import 'package:shoesapp/configration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: appbar("mobi","sport"),
      body: Column(
        children: [
          listtile("Running", "15 Result"),
        ],
      ),),
      
    );
  }
}