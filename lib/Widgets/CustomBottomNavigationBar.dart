import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return BottomNavigationBar(
      iconSize: 30,
      currentIndex: 0,
      backgroundColor: Color(0xff1F265E),
      selectedItemColor: Color(0xff8E97FD),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Color(0xff1F265E),
          label: 'Home',
          icon: Icon(Icons.home_outlined,),
        ),
        BottomNavigationBarItem(
          label: 'Sleep',
          icon: Icon(Icons.single_bed, color: Color(0xffE6E7F2),),
        ),
        BottomNavigationBarItem(
          label: 'Alarm',
          icon: Icon(Icons.lock_clock, color: Color(0xffE6E7F2)),
        ),
        BottomNavigationBarItem(
          label: 'Music',
          icon: Icon(Icons.music_note_outlined, color: Color(0xffE6E7F2)),
        ),
        BottomNavigationBarItem(
          label: 'User',
          icon: IconButton(icon: Icon(Icons.verified_user_outlined), onPressed: (){
            index = 4;
            print(index);
          },splashColor: Color(0xff1F265E),)
        ),
      ],
    );
  }
}

