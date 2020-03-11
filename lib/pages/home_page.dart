import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:scient_test/components/carousel_button.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List <Widget> myList = [
      CarouselButton(icon: Icons.image,name: "Gallery",onPressed: (){
        Navigator.pushNamed(context,'/gallery');
      },),
      CarouselButton(icon: Icons.assignment ,name: "Register",onPressed: (){
        Navigator.pushNamed(context,'/registration');
      },),
      CarouselButton(icon: Icons.work,name: "Projects",onPressed: (){
        Navigator.pushNamed(context,'/projects');
      },),

    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(''
              'Home Page'
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CarouselSlider(
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 1),
                height: 300,
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                             color: Colors.indigoAccent,

                          ),
                          child: Image.asset('')
                      );
                    },
                  );
                }).toList(),
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
                            color: Colors.indigoAccent,

                          ),
                          child:i
                      );
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