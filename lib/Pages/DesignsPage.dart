import 'package:design_pages/Pages/FirstDesign.dart';
import 'package:design_pages/Pages/SecondLayout.dart';
import 'package:design_pages/Pages/ThirdLayout.dart';
import 'package:flutter/material.dart';
class DesignsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        FirstDesign(),
        SecondLayout(),
        ThirdLayout(),
      ],
    );
  }
}