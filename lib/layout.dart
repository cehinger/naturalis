import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:naturalis/landing.dart';
import 'package:naturalis/quiz.dart';
import 'package:naturalis/repertoire.dart';

class Layout extends StatefulWidget {
  const Layout() : super();
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  late PageController _myPage;
  var selectedPage;

  @override
  void initState() {
    super.initState();
    _myPage = PageController(initialPage: 1);
    selectedPage = 0;
  }
  void navigateToTab(int index) {
    _myPage.jumpToPage(index);
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _myPage,
          children: const <Widget>[
            Center(child: MyLandingPage()),
            Center(child: MyQuizPage()),
            Center(child: MyRepertoryPage()),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: GNav(
              gap: 4,
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.green,
              selectedIndex: selectedPage,
              onTabChange: (index) {
                navigateToTab(index);
              },
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Acceuil',
                ),
                GButton(
                    icon: Icons.quiz,
                    text: 'Quiz'
                ),
                GButton(
                    icon: Icons.dock_outlined,
                    text: 'Repertoire'
                ),
              ],
            ),
          )
      ),
    );
  }
}
