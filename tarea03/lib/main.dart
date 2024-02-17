import 'package:flutter/material.dart';
import 'custom_list.dart';
import 'bottom_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 03',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Menu Demo',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.all(20),
              child: Text(
                "Explore the restaurant's delicious menu items below!",
                style: TextStyle(fontSize: 22),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: ListCustom(),
              ),
            ),
            Container(
              height: 150,
              child: BottomMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
