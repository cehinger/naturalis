import 'dart:developer';
import 'package:naturalis/Widget/BottomNavigation.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyPlayingQuizPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyPlayingQuizPage extends StatefulWidget {
  const MyPlayingQuizPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyPlayingQuizPage> createState() => _MyPlayingQuizPageState();
}

class _MyPlayingQuizPageState extends State<MyPlayingQuizPage> {
  int _counter = 1;

  void _selectQuestion() {

  }
  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      bottomNavigationBar: BottomNavigation(pageIndex: 2),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
                children: [
                  Text(
                      'Question n°$_counter ',
                      style:
                      const TextStyle
                      (
                        fontSize: 24.0,
                      ),
                  ),
                  const SizedBox(height: 20),
                  Image.network(
                    //TODO Remplacer l'url par une variable à laquelle on assignera l'url présente dans le json
                    'https://instagram.flyn1-1.fna.fbcdn.net/v/t51.2885-15/332092757_873223033968789_8810941222458115789_n.webp?stp=dst-jpg_e35_p320x320&_nc_ht=instagram.flyn1-1.fna.fbcdn.net&_nc_cat=109&_nc_ohc=5YS0II72N4sAX8CEm3q&edm=AGenrX8BAAAA&ccb=7-5&oh=00_AfBYRe1hubqxbJJGvFxku4Q2eXcjgw1ZRgJGfGudX_dfPg&oe=6416BA38&_nc_sid=5eceaa',
                    width: 200, // specify the width of the image
                    height: 200, // specify the height of the image
                    fit: BoxFit.cover, // specify the scaling behavior of the image
                  ),
                  const SizedBox(height: 20),
                  const Text(
                      'Question blabla bla blablabla blabla bla bla bla',
                      style:
                      TextStyle
                      (
                        fontSize: 36.0,
                      )
                  ),
                  const SizedBox(height: 20),
                  const Text(
                      "Veuillez cliquer sur une réponse",
                      style:
                      TextStyle
                      (
                        fontSize: 24.0,
                      )
                  ),
                ]
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Ajouter 1',
        child: const Icon(Icons.add),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}