import 'package:design_pages/Widgets/CustomCard.dart';
import 'package:design_pages/Widgets/CustomTextButton.dart';
import 'package:design_pages/Widgets/VerticalPageView.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff28527a),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: double.infinity,),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/yo.jpg'),
            ),
            Text('José Salvador',
              style: GoogleFonts.lato(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            Text('Flutter Developer',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 30.0,
            )
            ),
            SizedBox(
              height: 20,
              width: 120,
              child: Divider(
                color: Colors.white,
              ),
            ),
            CustomCard(dato: '+55 29 61 45 55 / México', icono: Icons.phone,),
            CustomCard(dato: 'perezg.josesal@gmail.com', icono: Icons.email_outlined),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  OtroBoton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
