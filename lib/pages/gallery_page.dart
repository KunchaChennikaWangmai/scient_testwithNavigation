import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: myList,
      ),
    );
  }
}

List<Widget> myList = [
  ProjectImage(
    description: 'First Image',
    image_url:
        'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',
  ),
  ProjectImage(
    description: 'Second Image',
    image_url:
        'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png',
  ),
  ProjectImage(
    description: 'First Image',
    image_url:
        'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',
  ),
  ProjectImage(
    description: 'Second Image',
    image_url:
        'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png',
  ),
  ProjectImage(
    description: 'First Image',
    image_url:
        'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',
  ),
  ProjectImage(
    description: 'Second Image',
    image_url:
        'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png',
  ),
  ProjectImage(
    description: 'First Image',
    image_url:
        'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',
  ),
  ProjectImage(
    description: 'Second Image',
    image_url:
        'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png',
  ),
  ProjectImage(
    description: 'First Image',
    image_url:
        'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',
  ),
  ProjectImage(
    description: 'Second Image',
    image_url:
        'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png',
  ),
  ProjectImage(
    description: 'First Image',
    image_url:
        'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',
  ),
  ProjectImage(
    description: 'Second Image',
    image_url:
        'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png',
  ),
  ProjectImage(
    description: 'First Image',
    image_url:
        'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',
  ),
  ProjectImage(
    description: 'Second Image',
    image_url:
        'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png',
  ),
  ProjectImage(
    description: 'First Image',
    image_url:
        'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',
  ),
  ProjectImage(
    description: 'Second Image',
    image_url:
        'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png',
  ),
  ProjectImage(
    description: 'First Image',
    image_url:
        'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',
  ),
  ProjectImage(
    description: 'Second Image',
    image_url:
        'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png',
  ),
  ProjectImage(
    description: 'First Image',
    image_url:
        'https://cdn.lynda.com/course/612167/612167-637092469561292207-16x9.jpg',
  ),
  ProjectImage(
    description: 'Second Image',
    image_url:
        'https://www.mountaingoatsoftware.com/images/made/ec48b029b11bc958/2019-04-09-organizations-that-work-on-fewer-projects-at-a-time-get-more-done_600_314.png',
  ),
];

class ProjectImage extends StatelessWidget {
  ProjectImage({@required this.image_url, @required this.description});
  final String image_url;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      elevation: 20,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ImageFull(
                        image_url: this.image_url,
                        description: this.description,
                      )));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Image.network(image_url),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageFull extends StatelessWidget {
  ImageFull({@required this.image_url, @required this.description});
  final String image_url;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            image_url,
          ),
          SizedBox(
            height: 30,
          ),
          Text('$description'),
        ],
      ),
    );
  }
}
