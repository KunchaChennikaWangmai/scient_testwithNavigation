import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    final controller = PageController(
      initialPage: 1,
      viewportFraction: 0.8,

    );

    return  PageView(
      controller: controller,

      children: <Widget>[
        Card( color: Colors.red,),
        Card( color: Colors.yellow),
      ],

    );
  }
}
