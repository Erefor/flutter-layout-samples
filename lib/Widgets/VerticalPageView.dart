import 'package:design_pages/Pages/FirstDesign.dart';
import 'package:flutter/material.dart';

class VerticalPageView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: PageController(initialPage: 1,viewportFraction: 0.5),
      children: <Widget>[
        FirstDesign(),
        Text('Hola'),
        Text('Hola'),
        Icon(Icons.emoji_emotions_sharp),
        Icon(Icons.emoji_emotions_sharp),
        Icon(Icons.emoji_emotions_sharp),
        Icon(Icons.emoji_emotions_sharp),
        Icon(Icons.emoji_emotions_sharp),
      ],
    );
  }
}