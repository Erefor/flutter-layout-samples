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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          height: MediaQuery.of(context).size.height * 0.10,
          width: MediaQuery.of(context).size.width * 0.25,
          margin: EdgeInsets.only(left:20, right: 20  ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(image: AssetImage(pathDeImagen),
              fit: BoxFit.fill, 
            ),
          ),
        ),
        FittedBox(
          child: Text(nombre, 
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        FittedBox(
          child: Text(descripcion, 
            style: GoogleFonts.roboto(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}