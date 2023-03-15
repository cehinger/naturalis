import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:naturalis/landing.dart';
import 'package:naturalis/quiz.dart';
import 'package:naturalis/repertoire.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() =>_BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void navigateToTab(int tab) {


    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
      switch(tab) {
        case 0: return const MyLandingPage(title: 'home'); break;
        case 1: return const MyRepertoryPage(title: "repertoire d'espèce"); break;
        case 2: return const MyQuizPage(title: "Quiz"); break;
        default: return const MyLandingPage(title: 'home'); break;
      }

    }));
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: GNav(
            gap: 8,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.green,
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              //print(index);
              navigateToTab(index);
            },
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                  icon: Icons.dock_outlined,
                  text: 'Species'),
              GButton(
                  icon: Icons.quiz,
                  text: 'Quiz'
              ),
              GButton(
                  icon: Icons.settings,
                  text: 'Settings'
              ),
            ],
          ),
        )
    );
  }
}
