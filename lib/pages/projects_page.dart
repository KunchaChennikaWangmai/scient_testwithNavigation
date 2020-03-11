import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:scient_test/components/project_card.dart';


class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Projects"),
        ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, position) {
              return myList[position];
            },
            itemCount: myList.length,
          ),
        ),
      ),
    );
  }
}



List <Widget> myList = [
  ProjectCard(title: 'First', description: 'This is the First project', imagelink: 'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',),
  ProjectCard(title: 'Second',description: 'This is the Second Project', imagelink:'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png' ),

];