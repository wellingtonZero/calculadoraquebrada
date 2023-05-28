
import 'package:audioplayers/audioplayers.dart';
import 'package:calcanimada/menuNivel/nivel_mul.dart';
import 'package:calcanimada/menuNivel/nivel_sub.dart';
import 'package:calcanimada/menuNivel/nivel_mais.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Menu extends StatelessWidget {
  
  const Menu({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final menu = AudioCache();
    return Scaffold(
      appBar: AppBar(title: const Text('ESCOLHA A OPERAÇÃO',style: TextStyle(fontSize: 17))),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GestureDetector(
                      onTap: () {
                        menu.play('praticarsoma.mp3');
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => NivelMais(),
                          ),
                        );
                      },
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 100,
                        height: 100,
                        child: const RiveAnimation.asset(
                          'assets/btnMais.riv',
                          stateMachines: ['menumais'],

                          //fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        menu.play('praticarsub.mp3');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NivelSub(),
                          ),
                        );
                      },
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 100,
                        height: 100,
                        child: const RiveAnimation.asset(
                          'assets/btnMenos.riv',
                          stateMachines: ['menumenos'],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        menu.play('praticarmult.mp3');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NivelMul(),
                          ),
                        );
                      },
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 100,
                        height: 100,
                        child: const RiveAnimation.asset(
                          'assets/btnMult.riv',
                          stateMachines: ['menumult'],
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}
