import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:design_pages/Widgets/CustomIcon.dart';
const String descri = 'Laura Pergolizzi is known professionally as LP, is an American singer and songwriter, best known for her single "Lost on You".';

class FourthLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff89D3E5),
      body: Stack(
        children: <Widget>[
          BackgroundImage(),
          Content()
        ],
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff89D3E5),
            image: DecorationImage(
              image: AssetImage('assets/images/design4-1.png'),
              fit: BoxFit.cover,
            )
          ),
        ),
        Container(
          height: size.height * 0.79,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
        ),
        SizedBox(width: double.infinity),
      ],
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(width: double.infinity,height: 150,),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/design4-2.png'),
          radius: 60,
        ),
        Text('Laura Pergolizzi',
          style: GoogleFonts.prompt(
            color: Color(0xff683B0D),
            fontSize: 35
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomIcon(icono: Icons.mail_rounded,colorIcono: Color(0xff683B0D),colorFondoIcono: Color(0xffD3C7C7),),
            CustomIcon(icono: Icons.phone,colorIcono: Color(0xffF89300),colorFondoIcono: Color(0xffFCE2B6),),
            CustomIcon(icono: Icons.source_outlined,colorIcono: Color(0xff3EBAF2),colorFondoIcono: Color(0xffACF8FF),)
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Description(),
        ),
        Events()
      ],
    );
  }
}
class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: double.infinity,),
        Text('About you',
          style: GoogleFonts.prompt(
            color: Color(0xffF89300),
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(descri,
        textAlign: TextAlign.justify,
          style: GoogleFonts.prompt(
            color: Colors.grey,
            fontSize: 20
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Text('Upcoming events',
            style: GoogleFonts.prompt(
              color: Color(0xffF89300),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: double.infinity,),
        Event(day: '15', month: 'May',task: 'John Party',time: '9:00am - 15:00pm',),
        Event(day: '28', month: 'Jun',task: 'Zeke tales',time: '16:00am - 20:00pm',),
      ],
    );
  }
}

class Event extends StatelessWidget {
  Event({this.day,this.month, this.task,this.time});
  final String day;
  final String month;
  final String task;
  final String time;
  @override
  Widget build(BuildContext context) {
    final pantalla = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: pantalla.width * 0.91,
      height: pantalla.height * 0.12,
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.all(Radius.circular(25))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: 100,
            height: 250,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffFCE2B6),
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(day,
                  style: GoogleFonts.prompt(
                    color: Color(0xffF89300),
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
                Text(month,
                  style: GoogleFonts.prompt(
                    color: Color(0xffF89300),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(task,
                style: GoogleFonts.prompt(
                  color: Color(0xff707070),
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(time,
                style: GoogleFonts.prompt(
                  color: Color(0xff707070),
                  fontSize: 20,
                  fontWeight: FontWeight.normal
                ),
              )
            ],
          ),
          SizedBox(width: 35,)
        ],
      ),
    );
  }
}