import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSectionCard extends StatelessWidget {

  CustomSectionCard({this.nombre, this.descripcion, this.pathDeImagen});
  final String nombre;
  final String descripcion;
  final String pathDeImagen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: 110,
          width: 160,
          margin: EdgeInsets.only(left:20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(image: AssetImage(pathDeImagen),
              fit: BoxFit.fill, 
            ),
          ),
        ),
        Text(nombre, 
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(descripcion, 
          style: GoogleFonts.roboto(
            color: Colors.grey,
            fontSize: 15,
          ),
        )
      ],
    );
  }
}