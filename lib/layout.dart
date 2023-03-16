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
  var _selectedPage;

  @override
  void initState() {
    super.initState();
    _myPage = PageController(initialPage: 0);
    _selectedPage = 0;
  }
  void navigateToPage(int index) {
    _myPage.jumpToPage(index);
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _myPage,
          children: <Widget>[
            Center(child: MyLandingPage(redirectionFunction: navigateToPage)),
            const Center(child: MyQuizPage()),
            const Center(child: MyRepertoryPage()),
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
              activeColor: Colors.orange,
              selectedIndex: _selectedPage,
              onTabChange: (index) {
                navigateToPage(index);
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
