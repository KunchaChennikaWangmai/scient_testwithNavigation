import 'package:flutter/material.dart';
import 'package:scient_test/pages/home_page.dart';
import 'package:flutter/services.dart';
import 'package:scient_test/pages/gallery_page.dart';
import 'package:scient_test/pages/register_page.dart';
import 'package:scient_test/pages/projects_page.dart';

void main(){

    runApp(new MyApp());

}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        '/':(context)=>HomePage(),
        '/gallery':(context) => GalleryPage(),
        '/registration':(context) => RegisterPage(),
        '/projects':(context) => ProjectsPage(),

      },

    );
  }
}
