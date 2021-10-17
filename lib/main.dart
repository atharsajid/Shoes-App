import 'package:flutter/material.dart';
import 'package:shoesapp/configration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appbar("mobi", "sport"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              listtile("Running", "15 Result"),
              shoecontainer("images/1.png", "Adidas Shoe Sneakers", "Women's",
                  "\$199.99"),
              const SizedBox(
                height: 20,
              ),
              shoecontainer("images/2.png", "Nike Shoe Sneakers", "Men's",
                  "\$129.99"),
              const SizedBox(
                height: 20,
              ),
              shoecontainer("images/3.png", "Nike Air Max", "Men's",
                  "\$159.99"),
              const SizedBox(
              
              ),
            ],
          ),
        
        ),
        bottomNavigationBar: bottombar(),
      ),
    );
  }
}
