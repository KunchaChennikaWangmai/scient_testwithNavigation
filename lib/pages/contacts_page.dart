import 'package:bubble_chart/bubble_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Color selection = Colors.limeAccent[100];
final root = BubbleNode.node(
  padding: 0,
  children: [
    BubbleNode.node(
      padding: 5,
      options: BubbleOptions(
        color: Colors.amberAccent,
      ),
      children: [
        BubbleNode.leaf(
            value: 20000,
            options: BubbleOptions(
              color: Colors.amberAccent,
            )),
      ],
    ),
    BubbleNode.leaf(
        value: 20000,
        options: BubbleOptions(
          color: Colors.amberAccent,
          child: Container(
            child: Column(
              children: <Widget>[
                const Text('Student Team Head(Rahul): +91 8098002455'),
              ],
            ),
          ),
        )),
    BubbleNode.leaf(
        value: 20000,
        options: BubbleOptions(
          color: Colors.amberAccent,
          child: Container(
            child: Center(
              child: const Text(
                '  Admin Incharge'
                '  (Mr. Ganesh):'
                '  +91    9944641883/'
                '       9894127474',
                style: TextStyle(fontSize: 10, color: Colors.brown),
              ),
            ),
          ),
        )),
    BubbleNode.leaf(
        value: 20000,
        options: BubbleOptions(
          color: Colors.amberAccent,
          child: Container(
            child: Center(
              child: const Text(
                '  Admin Incharge'
                '  (Mr. Ganesh):'
                '  +91    9944641883/'
                '       9894127474',
                style: TextStyle(fontSize: 10, color: Colors.brown),
              ),
            ),
          ),
        )),
    BubbleNode.leaf(
        value: 20000,
        options: BubbleOptions(
          color: Colors.amberAccent,
        )),
    BubbleNode.leaf(
        value: 20000,
        options: BubbleOptions(
          color: Colors.amberAccent,
        )),
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.white, selection])),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 30,
                bottom: 0,
                right: 20,
              ),
              child: Container(
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Icons.menu,
                      color: Colors.brown,
                    ),
                    Center(
                        child: Text('      CONTACTS',
                            style:
                                TextStyle(fontSize: 28, color: Colors.brown))),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 400,
                        width: 400,
                        child: BubbleChartLayout(
                          root: root,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
