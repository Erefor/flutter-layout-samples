import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Navigator.pushNamed(context, 'designs');
    },
      child: Text('Diseños'),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        elevation: MaterialStateProperty.all<double>(1),
        minimumSize: MaterialStateProperty.all<Size>(Size(100, 80)),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(20))
        
     ), 
    );
  }
}

class OtroBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsetsDirectional.all(25),
      child: RawMaterialButton(
        padding: EdgeInsetsDirectional.all(10),
        onPressed: (){
          Navigator.pushNamed(context, 'designs');
        },
        child: Text('Mirar maquetado', style: GoogleFonts.lato(
          color: Color(0xff28527a),
          fontSize: 20,
        )),
      ),
    );
  }
}