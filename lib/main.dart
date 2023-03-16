import 'package:flutter/material.dart';
import 'package:naturalis/login.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Naturalis';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  App() : super();
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  late PageController _myPage;
  var selectedPage;

  @override
  void initState() {
    super.initState();
    _myPage = PageController(initialPage: 1);
    selectedPage = 1;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyLoginPage()
    );
  }
}
