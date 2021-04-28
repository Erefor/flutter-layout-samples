
import 'package:design_pages/Widgets/CustomBottomNavigationBar.dart';
import 'package:design_pages/Widgets/CustomIconButton.dart';
import 'package:design_pages/Widgets/CustomSectionCard.dart';
import 'package:design_pages/Widgets/MainContentCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FirstDesign extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff03174C),
        body: Stack(
          children: <Widget>[
            BackgroundImage(),
            Column(
              children: <Widget>[
                SizedBox(width: double.infinity,),
                FittedBox(fit: BoxFit.fitWidth, child: Header()),
                IconsRow(),
                MainContent(),
                MainBodyContent()
              ],
            )
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }

}

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(image: AssetImage('assets/sleep.png'), fit: BoxFit.cover,),
    );
  }
}

class Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text('Historias para dormir', 
            style: GoogleFonts.lato(fontSize: 25, color: Colors.white)
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text('Este es un diseño de muestra de una aplicación de meditación',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class IconsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        
        children: <Widget>[
          CustomIconButton(icon: Icons.flare_outlined, text: 'All',),
          CustomIconButton(icon: Icons.headset_sharp, text: 'Music',),
          CustomIconButton(icon: Icons.sentiment_satisfied_alt_outlined, text: 'Smile',),
          CustomIconButton(icon: Icons.mood_bad_outlined,text: 'Sad',),
          CustomIconButton(icon: Icons.kitchen_sharp, text: 'Refrí',),
          CustomIconButton(icon: Icons.wallet_membership_outlined, text: 'Wallet',),
          CustomIconButton(icon: Icons.mail_outline_outlined, text: 'Mail',),
          CustomIconButton(icon: Icons.money_sharp, text: 'Yep',)
        ],
      ),
    );
  }
}
class MainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          MainContentCard(),
        ],
      ),
    );
  }
}

class MainBodyContent extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            CustomSectionCard(nombre: 'Dormir Feliz', descripcion: '45 minutos de música para dormir',pathDeImagen: 'assets/images/design1-3.png' ),
            CustomSectionCard(nombre: 'Noche tranquila', descripcion: 'Pensamientos ligeros',pathDeImagen: 'assets/images/design1-2.png' ),
            CustomSectionCard(nombre: 'Dormir Feliz', descripcion: '45 minutos de música para dormir',pathDeImagen: 'assets/images/design1-3.png' ),
            CustomSectionCard(nombre: 'Noche tranquila', descripcion: 'Pensamientos ligeros',pathDeImagen: 'assets/images/design1-2.png' ),
            CustomSectionCard(nombre: 'Dormir Feliz', descripcion: '45 minutos de música para dormir',pathDeImagen: 'assets/images/design1-3.png' ),
            CustomSectionCard(nombre: 'Noche tranquila', descripcion: 'Pensamientos ligeros',pathDeImagen: 'assets/images/design1-2.png' ),
          
          ],
        ),
      );
  }
}