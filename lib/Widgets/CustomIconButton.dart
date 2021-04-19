import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({this.icon, this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top:25,right: 19, left: 19),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff98A1BD),
          ),
          width: 55,
          height: 55,
          child: IconButton(
            splashColor: Color(0xffE6E7F2),
            hoverColor: Color(0xffE6E7F2),
            icon: Icon(icon), 
            onPressed: (){
              print('Click');
            },
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(text,
            style: TextStyle(color: Color(0xffE6E7F2), fontSize: 15),
          ),
        ),
      ],
    );
  }
}