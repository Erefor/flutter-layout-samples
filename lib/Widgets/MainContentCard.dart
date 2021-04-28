import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainContentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: MediaQuery.of(context).size.width * 0.6,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(image: AssetImage('assets/images/primerosegunda.png'),
              fit: BoxFit.fill, 
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: double.infinity,),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 25, bottom: 50),
              child: Row(
                children: <Widget>[IconButton(icon: Icon(Icons.monitor, color: Colors.white,), onPressed: (){},)],
              ),
            ),
            Text('The Ocean Moon', style: GoogleFonts.newRocker(fontSize: 40, color: Colors.white)),
            Text('Ocho horas de música popular para dormir', style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 15,
            )),
          ],
        ),
      ],
    );
  }
}