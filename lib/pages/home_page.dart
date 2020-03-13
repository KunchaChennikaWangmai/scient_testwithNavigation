import 'package:bubble_chart/bubble_chart.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scient_test/components/carousel_button.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL() async {
  const url = 'https://scient.nitt.edu/#!/Register';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Color selection = Colors.limeAccent[100];
final root = BubbleNode.node(
  padding: 15,
  children: [
    BubbleNode.node(
      options: BubbleOptions(
        color: Colors.amberAccent,
      ),
      padding: 30,
      children: [
        BubbleNode.leaf(
          options: BubbleOptions(
              color: Colors.amberAccent,
              child: Container(
                child: Text('Scient'),
              )),
          value: 4159,
        ),
      ],
    ),
    BubbleNode.leaf(
      options: BubbleOptions(
        color: Colors.amberAccent,
      ),
      value: 4159,
    ),
    BubbleNode.leaf(
      options: BubbleOptions(
        color: Colors.amberAccent,
      ),
      value: 4000,
    ),
    BubbleNode.leaf(
      options: BubbleOptions(
        color: Colors.amberAccent,
      ),
      value: 4000,
    ),
    BubbleNode.leaf(
      options: BubbleOptions(
        color: Colors.amberAccent,
      ),
      value: 4000,
    ),
  ],
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      CarouselButton(
        icon: Icons.image,
        name: "Gallery",
        onPressed: () {
          Navigator.pushNamed(context, '/gallery');
        },
      ),
      CarouselButton(
        icon: Icons.assignment,
        name: "Register",
        onPressed: () {
          _launchURL();
        },
      ),
      CarouselButton(
        icon: Icons.work,
        name: "Projects",
        onPressed: () {
          Navigator.pushNamed(context, '/projects');
        },
      ),
      CarouselButton(
        icon: Icons.contact_mail,
        name: "Contacts",
        onPressed: () {
          Navigator.pushNamed(context, '/contacts');
        },
      ),
    ];
    return SafeArea(
      child: Scaffold(
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
                          child: Text('      SCIENT',
                              style: TextStyle(
                                  fontSize: 28, color: Colors.brown))),
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
                        CarouselSlider(
                          enlargeCenterPage: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 1),
                          height: 200,
                          items: [1, 2, 3, 4, 5].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.amberAccent,
                                    ),
                                    child: Image.asset(''));
                              },
                            );
                          }).toList(),
                        ),
                        Divider(
                          height: 50,
                          thickness: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            top: 30,
                            bottom: 0,
                            right: 20,
                          ),
                          child: Container(
                            child: Center(
                                child: Text('ABOUT US',
                                    style: TextStyle(
                                        fontSize: 28, color: Colors.brown))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            top: 10,
                            bottom: 20,
                            right: 20,
                          ),
                          child: Container(
                            child: Center(
                                child: Text(
                                    'SCIEnT is a multi-disciplinary innovation centre, providing opportunities to students to delve into the ever expanding world of technology, and discover, hands on, the incredible scope for innovation that the world offers today. The lab allows students to explore and experiment with technology, without having to deal with the fear and cost of failure. At SCIEnT, students are offered a multitude of tools, machines, consumables and services, and a space in which to work, learn and grow.',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.brown))),
                          ),
                        ),
                        Divider(
                          height: 50,
                          thickness: 50,
                        ),
                        CarouselSlider(
                          enlargeCenterPage: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 1),
                          height: 300,
                          items: [1, 2, 3, 4, 5].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.amberAccent,
                                    ),
                                    child: Image.asset(''));
                              },
                            );
                          }).toList(),
                        ),
                        Divider(
                          height: 100,
                          thickness: 100,
                        ),
                        Divider(
                          height: 100,
                          thickness: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              CarouselSlider(
                enlargeCenterPage: true,
                autoPlay: false,
                height: 70,
                viewportFraction: 0.4,
                items: myList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amberAccent,
                          ),
                          child: i);
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first screen when tapped.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
