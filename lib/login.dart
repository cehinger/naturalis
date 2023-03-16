import 'package:flutter/material.dart';
import 'package:naturalis/layout.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  final int pageIndex = 0;

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {

  @override
  Widget build(BuildContext context) {
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
            const Center(
            ),
            Column(
                children: const [
                  Text(
                      'Bonjour',
                      style: TextStyle(
                        fontSize: 42.0,
                      )
                  ),
                  Text(
                      'Homo Sapiens',
                      style: TextStyle(
                        fontSize: 36.0,
                      )
                  ),
                  Text(
                      "Bienevnue à toi si tu n'es jamais venu ici. Nos comptoirs Faune et Flore te fascinerons, je l'espère",
                      style: TextStyle(
                        fontSize: 24.0,
                      )
                  )
                ]
            ),
            Column(
                children: [
                  OutlinedButton (
                    child: const Text("Se Connecter"),
                    onPressed: () { },
                  ),
                  TextButton (
                    child: const Text("Passer"),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context){
                        return const Layout();
                      }));
                    },
                  ),
                ]
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
