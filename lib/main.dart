import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naturalis/login.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Naturalis';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: const ColorScheme(
            background: Colors.black87,
            brightness: Brightness.dark,
            primary: Colors.orange,
            onPrimary: Colors.deepOrange,
            secondary: Colors.white,
            onSecondary: Colors.white60,
            error: Colors.red,
            onError: Colors.red,
            onBackground: Colors.purple,
            surface: Colors.yellow,
            onSurface: Colors.blue),
      ),
      title: _title,
      home: App(),
      debugShowCheckedModeBanner: false,
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
