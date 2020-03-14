import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scient_test/ProjectsAyush/DynamicTabContent.dart';
import 'package:scient_test/ProjectsAyush/my_home_page.dart';
import 'package:scient_test/gallerydharsh/galleryMaindart.dart';
import 'package:scient_test/pages/contacts_page.dart';
import 'package:scient_test/pages/home_page.dart';
import 'package:scient_test/pages/register_page.dart';
import 'package:scient_test/toolsnew/Tools.dart';

void main() {
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
        '/': (context) => HomePage(),
        '/gallery': (context) => HomePag(),
        '/registration': (context) => RegisterPage(),
        '/projects': (context) => CardStack(),
        '/faqs': (context) => MyHomePage(),
        '/contacts': (context) => ContactsPage(),
        '/tools': (context) => Tools(),
      },
    );
  }
}
