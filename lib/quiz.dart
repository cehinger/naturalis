import 'package:flutter/material.dart';
import 'package:naturalis/landing.dart';
import 'package:naturalis/playing_quiz.dart';

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
      home: const MyQuizPage(),
    );
  }
}

class MyQuizPage extends StatefulWidget {
  const MyQuizPage({super.key});

  @override
  State<MyQuizPage> createState() => _MyQuizPageState();
}

class _MyQuizPageState extends State<MyQuizPage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
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
            const Text(
              'Merci de sélectionner un theme de quiz :',
              style:
              TextStyle
                (
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 40),
            Column(
                children: [
                  Row(
                      children: [
                        const SizedBox(width: 20),
                        Expanded(
                            flex: 1,
                            child:
                            OutlinedButton (
                              onPressed: (){},
                              child: const Text("Insectes"),
                            ),

                        ),
                        Image.network(
                          'https://e7.pngegg.com/pngimages/717/193/png-clipart-insect-a-dragonfly-a-dazzle-of-dragonflies-emperor-insect-insect-dragonfly.png',
                          width: 50, // specify the width of the image
                          height: 50, // specify the height of the image
                          fit: BoxFit.cover, // specify the scaling behavior of the image
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                            flex: 1,
                            child:
                            OutlinedButton (
                              onPressed: (){},
                              child: const Text("Arthropodes"),
                            )
                        ),
                        Image.network(
                          'https://e7.pngegg.com/pngimages/387/118/png-clipart-brush-footed-butterflies-butterfly-gossamer-winged-butterflies-insect-arthropod-butterfly-brush-footed-butterfly-insects.png',
                          width: 50, // specify the width of the image
                          height: 50, // specify the height of the image
                          fit: BoxFit.cover, // specify the scaling behavior of the image
                        ),
                        const SizedBox(width: 20),
                      ]
                  ),
                  const SizedBox(height: 20),
                  Row(
                      children: [
                        const SizedBox(width: 20),
                        Expanded(
                            flex: 1,
                            child:
                            OutlinedButton (
                              onPressed: (){},
                              child: const Text("Crustacé"),
                            )
                        ),
                        Image.network(
                          'https://e7.pngegg.com/pngimages/701/639/png-clipart-snow-crab-crustacean-orangutan-crab-food-animals.png',
                          width: 50, // specify the width of the image
                          height: 50, // specify the height of the image
                          fit: BoxFit.cover, // specify the scaling behavior of the image
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                            flex: 1,
                            child:
                            OutlinedButton (
                              onPressed: (){},
                              child: const Text("Chélicérés"),
                            )
                        ),
                        Image.network(
                          'https://e7.pngegg.com/pngimages/263/425/png-clipart-scorpion-insect-sticker-black-scorpion-food-black-hair.png',
                          width: 50, // specify the width of the image
                          height: 50, // specify the height of the image
                          fit: BoxFit.cover, // specify the scaling behavior of the image
                        ),
                        const SizedBox(width: 20),
                      ]
                  ),
                  const SizedBox(height: 20),
                  Row(
                      children: [
                        const SizedBox(width: 20),
                        Expanded(
                            flex: 1,
                            child:
                            OutlinedButton (
                              onPressed: (){},
                              child: const Text("Hexapodes"),
                            )
                        ),
                        Image.network(
                          'https://e7.pngegg.com/pngimages/300/592/png-clipart-hercules-beetle-rhinoceros-beetles-graphy-beetle-food-animals.png',
                          width: 50, // specify the width of the image
                          height: 50, // specify the height of the image
                          fit: BoxFit.cover, // specify the scaling behavior of the image
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                            flex: 1,
                            child:
                            OutlinedButton (
                              onPressed: (){},
                              child: const Text("Champignons"),
                            )
                        ),
                        Image.network(
                          'https://e7.pngegg.com/pngimages/321/442/png-clipart-poisonous-mushroom-fungus-amanita-muscaria-mushroom-poisoning-mushroom-грибы-шиитаке-грибы.png',
                          width: 50, // specify the width of the image
                          height: 50, // specify the height of the image
                          fit: BoxFit.cover, // specify the scaling behavior of the image
                        ),
                        const SizedBox(width: 20),
                      ]
                  ),
                ]),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
