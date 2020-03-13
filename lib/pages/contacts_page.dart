import 'package:bubble_chart/bubble_chart.dart';
import 'package:flutter/material.dart';

final root = BubbleNode.node(
  padding: 15,
  children: [
    BubbleNode.node(
      padding: 30,
      children: [
        BubbleNode.leaf(
          value: 4159,
        ),
      ],
    ),
    BubbleNode.leaf(
      value: 4159,
    ),
    BubbleNode.leaf(
      value: 4000,
    ),
    BubbleNode.leaf(
      value: 4000,
    ),
    BubbleNode.leaf(
      value: 4000,
    ),
  ],
);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: ContactsPage(),
    );
  }
}

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 700,
        width: 700,
        child: BubbleChartLayout(
          root: root,
        ),
      ),
    );
  }
}
