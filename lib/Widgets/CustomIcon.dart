import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({this.icono, this.colorIcono, this.colorFondoIcono});
  final IconData icono;
  final Color colorIcono;
  final Color colorFondoIcono;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: colorFondoIcono,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Icon(icono,
        color: colorIcono,
      ),
    );
  }
}