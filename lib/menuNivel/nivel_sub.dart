import 'package:audioplayers/audioplayers.dart';
import 'package:calculadoraquebrada/operacaoSub/carrosel_sub.dart';
import 'package:calculadoraquebrada/operacaoSub/sub_dificil.dart';
import 'package:calculadoraquebrada/operacaoSub/sub_facil.dart';
import 'package:calculadoraquebrada/operacaoSub/sub_normal.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class NivelSub extends StatefulWidget {
  const NivelSub({Key key}) : super(key: key);

  @override
  State<NivelSub> createState() => _NivelSubState();
}

class _NivelSubState extends State<NivelSub> {
  StateMachineController controller;
  SMIInput<double> nivel1Stars;
  int valor = 0;
  final nivel = AudioCache();

  @override
  void dispose() {
    controller;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              const Text('SELECIONE O NÍVEL', style: TextStyle(fontSize: 17))),
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
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: RiveAnimation.asset(
                      'assets/menuNivel.riv',
                      stateMachines: const ['tela3'],
                      onInit: (artboard) {
                        controller = StateMachineController.fromArtboard(
                          artboard,
                          'tela3',
                        );
                      },
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.05, -0.80),
                  child: GestureDetector(
                    onTap: () async {
                      nivel.play('nivel.wav');
                      final idPessoa = await Navigator.of(context).push<int>(
                        MaterialPageRoute(
                          builder: (_) => SubFacil(),
                        ),
                      );
                      if (idPessoa == 1) {
                        nivel1Stars?.change(1);
                      } else if (idPessoa == 2) {
                        nivel1Stars?.change(2);
                      } else if (idPessoa == 3) {
                        nivel1Stars?.change(3);
                      } else {
                        nivel1Stars?.change(0);
                      }
                      setState(() {});
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.05, -0.20),
                  child: GestureDetector(
                    onTap: () async {
                      nivel.play('nivel.wav');
                      final idPessoa = await Navigator.of(context).push<int>(
                        MaterialPageRoute(
                          builder: (_) => SubNormal(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.05, 0.50),
                  child: GestureDetector(
                    onTap: () async {
                      nivel.play('nivel.wav');
                      final idPessoa = await Navigator.of(context).push<int>(
                        MaterialPageRoute(
                          builder: (_) => SubDificil(),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('?', style: TextStyle(fontSize: 30)),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CarroselSub(),
            ),
          );
        },
      ),
    );
  }
}
