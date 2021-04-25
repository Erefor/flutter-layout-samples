

import 'package:design_pages/Widgets/CustomCard.dart';
import 'package:design_pages/Widgets/CustomTextButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  AnimationController aniController;
   Animation<double> animation;
  @override
  void initState() {
    super.initState();
    aniController = AnimationController(vsync: this,duration: Duration(seconds: 4),);
    animation = CurvedAnimation(parent: aniController, curve: Curves.easeInOutQuad);  
    aniController.forward();
    

    aniController.addListener(() { 
      print(aniController.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff28527a),
      body: AnimatedBuilder(
        animation: aniController,
        //child: ejemplo(),
        builder: (BuildContext context, Widget widget){
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: double.infinity,),
                CircleAvatar(
                  radius: 80 * animation.value,
                  backgroundImage: AssetImage('assets/yo.jpg'),
                ),
                Text('José Salvador',
                  style: GoogleFonts.lato(
                    fontSize: 40 *animation.value,
                    color: Colors.white,
                  ),
                ),
                Text('Flutter Developer',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 30.0 * animation.value,
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
          );
        },
      ),
    );
  }

}
