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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(children: [
                Positioned(
                    left: -150,
                    top: -120,
                    child: Image.asset("assets/images/fernsLeft.png")),
                Positioned(
                    right: -200,
                    top: -150,
                    child: Image.asset("assets/images/fernsRight.png")),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Image.asset("assets/images/naturalisLogo.png"),
                      Container(
                        margin: const EdgeInsets.only(top: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Bonjour,',
                                style: TextStyle(
                                  fontSize: 40.0,
                                )),
                            Text('Homo Sapiens²',
                                style: TextStyle(
                                  fontSize: 28.0,
                                )),
                            Text(
                              "Bienvenue à toi si tu n'es jamais venu ici. Nos comptoirs et Quiz sur la Faune et Flore te fascineront, je l'espère...",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size.fromHeight(40),
                      side: const BorderSide(width: 2.0, color: Colors.orange),
                    ),
                    onPressed: () {},
                    child: const Text("SE CONNECTER"),
                  ),
                  TextButton(
                    child: const Text("Passer"),
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const Layout();
                      }));
                    },
                  ),
                ]),
              ),
            ],
          );
        },
      ),
    );
  }
}
