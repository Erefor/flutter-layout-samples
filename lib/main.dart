import 'package:design_pages/Pages/DesignsPage.dart';
import 'package:design_pages/Pages/FirstDesign.dart';
import 'package:flutter/material.dart';

import 'Pages/HomePage.dart';

main()=> runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/'        : (BuildContext context) => HomePage(),
        'design-1' : (BuildContext context) => FirstDesign(),
        'designs' : (BuildContext context) => DesignsPage(),
      },
    );
  }
}