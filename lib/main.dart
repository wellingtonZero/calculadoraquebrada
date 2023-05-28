import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var player = AudioCache();
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    player.play('abertura.mp3');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora Quebrada',
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  var player2 = AudioCache();

  MyHomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color.fromARGB(255, 0, 0, 0),
      Colors.blue,
      Colors.yellow,
      Color.fromARGB(255, 4, 221, 22),
    ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Container(
                    child: const RiveAnimation.asset(
                      'assets/aberturanuven.riv',
                      stateMachines: ['nuvens'],
                      artboard: 'tela2',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.03, -0.90),
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    height: 90,
                    child: Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'Calculadora \nQuebrada',
                            textAlign: TextAlign.center,
                            textStyle: const TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                            ),
                            colors: colorizeColors,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Container(
                    child: const RiveAnimation.asset(
                      'assets/abertura.riv',
                      artboard: 'abertura',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.03, -0.66),
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => Menu(),
                          ),
                        );
                      },
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 120,
                        height: 120,
                        child: const RiveAnimation.asset(
                          'assets/btnIniciar.riv',
                          animations: ['click'],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
