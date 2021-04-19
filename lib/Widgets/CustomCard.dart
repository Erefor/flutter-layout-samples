import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  CustomCard({this.icono, this.dato});
  final IconData icono;
  final String dato;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 25,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icono,
          color: Color(0xff28527a),
        ),
        title: Text(
          dato,
          style: GoogleFonts.lato(
            color: Color(0xff28527a),
            fontSize: 20.0,
          )
        ),
      )
    );
  }
}
