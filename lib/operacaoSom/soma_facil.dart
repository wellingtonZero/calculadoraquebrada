import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:math_expressions/math_expressions.dart';

class SomaFacil extends StatefulWidget {
  const SomaFacil({Key key}) : super(key: key);

  @override
  State<SomaFacil> createState() => _SomaFacilState();
}

class _SomaFacilState extends State<SomaFacil> {
  StateMachineController ctrCalc;
  SMIInput<bool> erro;
  AudioCache acertouNum = AudioCache();
  AudioCache medalha = AudioCache();
  AudioCache tecla = AudioCache();
  AudioCache player2 = AudioCache();
  bool calc = true;
  bool maoPositivo = false;
  bool certo = true;
  bool fechar = true;
  bool telaOlhos = true;
  bool telaOlhos2 = false;
  bool telaOlhos3 = false;
  bool telaOlhos4 = false;
  bool telaOlhos5 = false;
  bool telaOlhos6 = false;
  bool telaMedalha = false;
  String numeros = '0';
  bool fazerCalculo = false;
  int quantNumeros = 0;
  bool operacao = false;
  int zero = 0;
  bool botaoDois = false;
  bool botaoTres = false;
  bool botaoQuatro = false;
  bool botaoCinco = false;
  bool botaoSeis = false;
  bool botaoSete = false;
  bool botaoOito = false;
  bool botaoNove = false;
  bool botaoDez = false;
  bool nivel1 = true;
  bool nivel2 = false;
  bool nivel3 = false;
  bool nivel4 = false;
  bool nivel5 = false;
  bool nivel6 = false;
  bool nivel7 = false;
  bool nivel8 = false;
  bool nivel9 = false;
  bool nivel10 = false;
  bool mostrarLigar = true;
  bool isPlaying = false;
  bool instruir = false;
  bool instruirBotao = false;
  bool instruirBotao1 = false;
  bool instruirBotao2 = false;
  bool instruirBotao3 = false;
  bool instruirBotao4 = false;
  final controller = ConfettiController();

  void errou() {
    erro?.change(true);
  }

  void naoerrou() {
    erro?.change(false);
  }

  void teclarUm() {
    tecla.play('tecla.wav');
  }

  void ligueOn() {
    final ligar = AudioCache();
    ligar.play('ligueOn.mp3');
  }

  void deletarSoma() {
    final delSoma = AudioCache();
    delSoma.play('deletesoma.mp3');
  }

  void fecharComemoracao1() {
    Future.delayed(const Duration(seconds: 7), () {
      setState(() {
        controller.stop();
        telaOlhos2 = false;
        telaOlhos = true;
      });
    });
  }

  void fecharComemoracao2() {
    Future.delayed(const Duration(seconds: 8), () {
      setState(() {
        controller.stop();
        telaOlhos3 = false;
        telaOlhos = true;
      });
    });
  }

  void fecharComemoracao3() {
    Future.delayed(const Duration(seconds: 9), () {
      setState(() {
        controller.stop();
        telaOlhos4 = false;
        telaOlhos = true;
      });
    });
  }

  void fecharComemoracao4() {
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        controller.stop();
        telaOlhos5 = false;
        telaOlhos = true;
      });
    });
  }

  void fecharComemoracao5() {
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        controller.stop();
        telaOlhos6 = false;
        telaOlhos = true;
      });
    });
  }

  void habilitarLigar() {
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        instruirBotao = true;
      });
    });
  }

  void tocarPlayer() {
    var player = AudioCache();
    player.play('giz.wav');
  }

  void vozLigar() {
    var player2 = AudioCache();
    player2.play('ligarCalculadora.mp3');
    habilitarLigar();
  }

  void vozInstruir1() {
    var player3 = AudioCache();
    player3.play('instruir.mp3');
  }

  void vozInstruir2() {
    var player4 = AudioCache();
    player4.play('facasoma.mp3');
  }

  void vozInstruir3() {
    var player5 = AudioCache();
    player5.play('resultado.mp3');
  }

  void vozInstruir4() {
    var player6 = AudioCache();
    player6.play('novamente.mp3');
  }

  void gizQuadro() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        tocarPlayer();
        vozLigar();
      });
    });
  }

  void gizQuadro2() {
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        player2.play('giz.wav');
      });
    });
  }

  void mudarNivel2() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        nivel1 = false;
        nivel2 = true;
        gizQuadro2();
        vozInstruir4();
      });
    });
  }

  void mudarNivel3() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        nivel2 = false;
        nivel3 = true;
        gizQuadro2();
      });
    });
  }

  void mudarNivel4() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        nivel3 = false;
        nivel4 = true;
        gizQuadro2();
      });
    });
  }

  void mudarNivel5() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        nivel4 = false;
        nivel5 = true;
        gizQuadro2();
      });
    });
  }

  void mudarNivel6() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        nivel5 = false;
        nivel6 = true;
        gizQuadro2();
      });
    });
  }

  void mudarNivel7() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        nivel6 = false;
        nivel7 = true;
        gizQuadro2();
      });
    });
  }

  void mudarNivel8() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        nivel7 = false;
        nivel8 = true;
        gizQuadro2();
      });
    });
  }

  void mudarNivel9() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        nivel8 = false;
        nivel9 = true;
        gizQuadro2();
      });
    });
  }

  void mudarNivel10() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        nivel9 = false;
        nivel10 = true;
        gizQuadro2();
      });
    });
  }

  void mudarPositivo() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        maoPositivo = true;
      });
    });
  }

  @override
  void initState() {
    controller.play();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  mudarAnime() {
    setState(() {});
  }

  void setarValor(String valor) {
    setState(() {
      if (numeros == '0') {
        numeros = valor;
      } else {
        numeros += valor;
      }
    });
  }

  void realizarCalculo() {
    numeros = numeros.replaceAll('x', '*');
    Parser p = Parser();
    Expression expressao = p.parse(numeros);
    ContextModel cm = ContextModel();
    double resolucaoDaExpressao = expressao.evaluate(EvaluationType.REAL, cm);
    setState(() {
      numeros = resolucaoDaExpressao.round().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    zero = numeros.length;
    return Scaffold(
      appBar: AppBar(
        title: Text('SOMA - FÁCIL', style: TextStyle(fontSize: 17)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Visibility(
              visible: fechar,
              child: Expanded(
                child: Stack(
                  children: [
                    Container(
                      child: const RiveAnimation.asset(
                        'assets/sala1.riv',
                        animations: ['inicio'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: GestureDetector(
                        onTap: () {
                          mudarAnime();
                          fechar = false;
                          gizQuadro();
                        },
                        child: Container(
                            width: 100,
                            height: 100,
                            child: const RiveAnimation.asset(
                              'assets/botao.riv',
                              animations: ['anime'],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !fechar,
              child: Expanded(
                child: Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          child: const RiveAnimation.asset(
                            'assets/aula.riv',
                            animations: ['sala'],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Visibility(
                      visible: nivel1,
                      child: (Align(
                        alignment: AlignmentDirectional(0.0, -0.92),
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.45,
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Stack(
                            children: [
                              Align(
                                child: RiveAnimation.asset(
                                  'assets/doisQuadro.riv',
                                  animations: ['dois'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    Visibility(
                      visible: nivel2,
                      child: (Align(
                        alignment: AlignmentDirectional(0.0, -0.92),
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.45,
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Stack(
                            children: [
                              Align(
                                child: RiveAnimation.asset(
                                  'assets/quadroTres.riv',
                                  animations: ['tres'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    Visibility(
                      visible: nivel3,
                      child: (Align(
                        alignment: AlignmentDirectional(0.0, -0.92),
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.45,
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Stack(
                            children: [
                              Align(
                                child: RiveAnimation.asset(
                                  'assets/quadroQuatro.riv',
                                  animations: ['quatro'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    Visibility(
                      visible: nivel4,
                      child: (Align(
                        alignment: AlignmentDirectional(0.0, -0.92),
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.45,
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Stack(
                            children: [
                              Align(
                                child: RiveAnimation.asset(
                                  'assets/quadroCinco.riv',
                                  animations: ['cinco'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    Visibility(
                      visible: nivel5,
                      child: (Align(
                        alignment: AlignmentDirectional(0.0, -0.92),
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.45,
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Stack(
                            children: [
                              Align(
                                child: RiveAnimation.asset(
                                  'assets/quadroSeis.riv',
                                  animations: ['seis'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    Visibility(
                      visible: nivel6,
                      child: (Align(
                        alignment: AlignmentDirectional(0.0, -0.92),
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.45,
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Stack(
                            children: [
                              Align(
                                child: RiveAnimation.asset(
                                  'assets/quadroSete.riv',
                                  animations: ['sete'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    Visibility(
                      visible: nivel7,
                      child: (Align(
                        alignment: AlignmentDirectional(0.0, -0.92),
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.45,
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Stack(
                            children: [
                              Align(
                                child: RiveAnimation.asset(
                                  'assets/quadroOito.riv',
                                  animations: ['oito'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    Visibility(
                      visible: nivel8,
                      child: (Align(
                        alignment: AlignmentDirectional(0.0, -0.92),
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.45,
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Stack(
                            children: [
                              Align(
                                child: RiveAnimation.asset(
                                  'assets/quadroNove.riv',
                                  animations: ['nove'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    Visibility(
                      visible: nivel9,
                      child: (Align(
                        alignment: AlignmentDirectional(0.0, -0.92),
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.45,
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Stack(
                            children: [
                              Align(
                                child: RiveAnimation.asset(
                                  'assets/quadroDez.riv',
                                  animations: ['dez'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                    ),
                    Visibility(
                      visible: telaMedalha,
                      child: Align(
                        alignment: AlignmentDirectional(0.15, -0.97),
                        child: Container(
                            height: 500,
                            width: 600,
                            child: const RiveAnimation.asset(
                              'assets/medalBronze.riv',
                              animations: ['medal'],
                            )),
                      ),
                    ),
                    Visibility(
                      visible: maoPositivo,
                      child: Align(
                        alignment: AlignmentDirectional(0.99, 0.99),
                        child: Container(
                            height: 200,
                            width: 200,
                            child: const RiveAnimation.asset(
                              'assets/maoPositivo.riv',
                              animations: ['positivo'],
                            )),
                      ),
                    ),
                    Visibility(
                      visible: calc,
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.85),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 30),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.62,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.6,
                                      child: Stack(
                                        children: [
                                          RiveAnimation.asset(
                                            'assets/calculadora.riv',
                                            stateMachines: ['anime'],
                                            onInit: (artboard) {
                                              ctrCalc = StateMachineController
                                                  .fromArtboard(
                                                artboard,
                                                'anime',
                                              );
                                              if (ctrCalc == null) return;
                                              artboard.addController(ctrCalc);
                                              erro =
                                                  ctrCalc?.findInput('errou');
                                            },
                                          ),
                                          Visibility(
                                            visible: !telaOlhos,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      -0.05, -0.64),
                                              child: Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.12,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.50,
                                                decoration: BoxDecoration(),
                                                child: Text(
                                                  '${numeros}',
                                                  textAlign: TextAlign.end,
                                                  textDirection:
                                                      TextDirection.ltr,
                                                  style: TextStyle(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.15,
                                                      fontFamily: 'Numerico'),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.83, -0.19),
                                            child: GestureDetector(
                                              onTap: () {
                                                teclarUm();

                                                setState(() {
                                                  naoerrou();
                                                  telaOlhos = false;
                                                  numeros = '0';
                                                  quantNumeros = 0;
                                                  operacao = false;
                                                  telaOlhos2 = false;
                                                });
                                              },
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.11,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/ligar.riv',
                                                    stateMachines: ['anime'],
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.09, -0.21),
                                            child: GestureDetector(
                                              onTap: () {
                                                teclarUm();
                                                if (zero == 1) {
                                                  setState(() {
                                                    errou();
                                                    certo = true;
                                                    numeros = '0';
                                                    operacao = false;
                                                  });
                                                } else {
                                                  setState(() {
                                                    if (numeros == '0') {
                                                      fazerCalculo = false;
                                                    } else {
                                                      quantNumeros--;
                                                    }
                                                    numeros = numeros.substring(
                                                        0, numeros.length - 1);

                                                    operacao = true;
                                                  });
                                                }
                                              },
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.09,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.18,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/del.riv',
                                                    stateMachines: ['anime'],
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.83, 0.82),
                                            child: GestureDetector(
                                              onTap: () {
                                                teclarUm();
                                                setState(() {
                                                  naoerrou();
                                                });
                                                if (quantNumeros < 7 &&
                                                    operacao) {
                                                  setarValor('+');
                                                  quantNumeros++;
                                                  fazerCalculo = false;
                                                  operacao = false;
                                                }
                                              },
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.10,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.14,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/soma.riv',
                                                    stateMachines: ['anime'],
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                          ),
                                          Visibility(
                                            visible: telaOlhos,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.15, -0.97),
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.36,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.60,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/olhosVisor.riv',
                                                    animations: ['olhos'],
                                                  )),
                                            ),
                                          ),
                                          Visibility(
                                            visible: telaOlhos2,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.15, -0.97),
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.36,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.60,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/olhosVisor2.riv',
                                                    animations: ['olhos2'],
                                                  )),
                                            ),
                                          ),
                                          Visibility(
                                            visible: telaOlhos3,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.15, -0.97),
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.36,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.60,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/olhosVisor3.riv',
                                                    animations: ['olhos2'],
                                                  )),
                                            ),
                                          ),
                                          Visibility(
                                            visible: telaOlhos4,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.15, -0.97),
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.36,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.60,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/olhosVisor4.riv',
                                                    animations: ['olhos2'],
                                                  )),
                                            ),
                                          ),
                                          Visibility(
                                            visible: telaOlhos5,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.15, -0.97),
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.36,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.60,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/olhoDireito.riv',
                                                    animations: ['idle'],
                                                  )),
                                            ),
                                          ),
                                          Visibility(
                                            visible: telaOlhos6,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.15, -0.97),
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.36,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.60,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/olhoEsquerdo.riv',
                                                    animations: ['idle'],
                                                  )),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    -0.82, 0.61),
                                            child: GestureDetector(
                                              onTap: () {
                                                if (telaOlhos) {
                                                  ligueOn();
                                                }
                                                teclarUm();
                                                if (quantNumeros < 7) {
                                                  setarValor('1');
                                                  quantNumeros++;
                                                  operacao = true;
                                                  fazerCalculo = true;
                                                }
                                              },
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.10,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.14,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/um.riv',
                                                    stateMachines: ['anime'],
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                          ),
                                          Visibility(
                                            visible: botaoDois,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      -0.25, 0.61),
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (telaOlhos) {
                                                    ligueOn();
                                                  }
                                                  teclarUm();
                                                  if (quantNumeros < 7) {
                                                    setarValor('2');

                                                    quantNumeros++;
                                                    fazerCalculo = true;
                                                    operacao = true;
                                                  }
                                                },
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.10,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.14,
                                                    child: const RiveAnimation
                                                        .asset(
                                                      'assets/dois.riv',
                                                      stateMachines: ['anime'],
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: botaoTres,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.28, 0.61),
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (telaOlhos) {
                                                    ligueOn();
                                                  }
                                                  teclarUm();
                                                  if (quantNumeros < 7) {
                                                    setarValor('3');
                                                    quantNumeros++;
                                                    fazerCalculo = true;
                                                    operacao = true;
                                                  }
                                                },
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.10,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.14,
                                                    child: const RiveAnimation
                                                        .asset(
                                                      'assets/tres.riv',
                                                      stateMachines: ['anime'],
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: botaoQuatro,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      -0.83, 0.40),
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (telaOlhos) {
                                                    ligueOn();
                                                  }
                                                  teclarUm();
                                                  if (quantNumeros < 7) {
                                                    setarValor('4');
                                                    quantNumeros++;
                                                    fazerCalculo = true;
                                                    operacao = true;
                                                  }
                                                },
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.10,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.14,
                                                    child: const RiveAnimation
                                                        .asset(
                                                      'assets/quatro.riv',
                                                      stateMachines: ['anime'],
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: botaoCinco,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      -0.25, 0.40),
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (telaOlhos) {
                                                    ligueOn();
                                                  }
                                                  teclarUm();
                                                  if (quantNumeros < 7) {
                                                    setarValor('5');
                                                    quantNumeros++;
                                                    fazerCalculo = true;
                                                    operacao = true;
                                                  }
                                                },
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.10,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.14,
                                                    child: const RiveAnimation
                                                        .asset(
                                                      'assets/cinco.riv',
                                                      stateMachines: ['anime'],
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: botaoSeis,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.28, 0.40),
                                              //0.28, 0.61
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (telaOlhos) {
                                                    ligueOn();
                                                  }
                                                  teclarUm();
                                                  if (quantNumeros < 7) {
                                                    setarValor('6');
                                                    quantNumeros++;
                                                    fazerCalculo = true;
                                                    operacao = true;
                                                  }
                                                },
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.10,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.14,
                                                    child: const RiveAnimation
                                                        .asset(
                                                      'assets/seis.riv',
                                                      stateMachines: ['anime'],
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: botaoSete,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      -0.82, 0.13),
                                              //0.28, 0.61
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (telaOlhos) {
                                                    ligueOn();
                                                  }
                                                  teclarUm();
                                                  if (quantNumeros < 7) {
                                                    setarValor('7');
                                                    quantNumeros++;
                                                    fazerCalculo = true;
                                                    operacao = true;
                                                  }
                                                },
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.10,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.14,
                                                    child: const RiveAnimation
                                                        .asset(
                                                      'assets/sete.riv',
                                                      stateMachines: ['anime'],
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: botaoOito,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      -0.25, 0.13),
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (telaOlhos) {
                                                    ligueOn();
                                                  }
                                                  teclarUm();
                                                  if (quantNumeros < 7) {
                                                    setarValor('8');
                                                    quantNumeros++;
                                                    fazerCalculo = true;
                                                    operacao = true;
                                                  }
                                                },
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.10,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.14,
                                                    child: const RiveAnimation
                                                        .asset(
                                                      'assets/oito.riv',
                                                      stateMachines: ['anime'],
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: botaoNove,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      0.28, 0.13),
                                              child: GestureDetector(
                                                onTap: () {
                                                  if (telaOlhos) {
                                                    ligueOn();
                                                  }
                                                  teclarUm();
                                                  if (quantNumeros < 7) {
                                                    setarValor('9');
                                                    quantNumeros++;
                                                    fazerCalculo = true;
                                                    operacao = true;
                                                  }
                                                },
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.10,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.14,
                                                    child: const RiveAnimation
                                                        .asset(
                                                      'assets/nove.riv',
                                                      stateMachines: ['anime'],
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Visibility(
                                            visible: instruirBotao,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.9, -0.00),
                                              child: GestureDetector(
                                                onTap: () {
                                                  teclarUm();
                                                  setState(() {
                                                    errou();
                                                    naoerrou();
                                                    telaOlhos = false;
                                                    numeros = '0';
                                                    instruir = true;
                                                    instruirBotao = false;
                                                    if (instruir && nivel1) {
                                                      vozInstruir1();
                                                    }
                                                    instruirBotao1 = true;
                                                  });
                                                },
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.20,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.40,
                                                  child: Stack(
                                                    children: [
                                                      const RiveAnimation.asset(
                                                        'assets/ligarDica.riv',
                                                        animations: ['click'],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(
                                                    0.28, 0.81),
                                            child: GestureDetector(
                                              onTap: () {
                                                teclarUm();
                                                if (numeros[
                                                        numeros.length - 1] ==
                                                    '+') {  
                                                  deletarSoma();
                                                  fazerCalculo = false;
                                                } else {
                                                  fazerCalculo = true;
                                                }

                                                if (fazerCalculo) {
                                                  realizarCalculo();
                                                  quantNumeros = numeros.length;
                                                }
                                                if (numeros == '2' &&
                                                    nivel1 == true) {
                                                  setState(() {
                                                    errou();
                                                    naoerrou();

                                                    isPlaying = true;
                                                    botaoDois = true;
                                                    mudarNivel2();
                                                    controller.play();
                                                    fecharComemoracao1();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    telaOlhos2 = true;
                                                  });
                                                } else {
                                                  if (numeros != '2' &&
                                                      nivel1) {
                                                    errou();
                                                  }
                                                }

                                                if (numeros == '3' &&
                                                    nivel2 == true) {
                                                  setState(() {
                                                    isPlaying = true;
                                                    botaoDois = false;
                                                    botaoTres = true;
                                                    mudarNivel3();
                                                    controller.play();
                                                    fecharComemoracao2();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    telaOlhos3 = true;
                                                  });
                                                } else {
                                                  if (numeros != '3' &&
                                                      nivel2) {
                                                    errou();
                                                  }
                                                }

                                                if (numeros == '4' &&
                                                    nivel3 == true) {
                                                  setState(() {
                                                    botaoTres = false;
                                                    botaoQuatro = true;
                                                    isPlaying = true;
                                                    mudarNivel4();
                                                    controller.play();
                                                    fecharComemoracao3();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    telaOlhos4 = true;
                                                  });
                                                } else {
                                                  if (numeros != '4' &&
                                                      nivel3) {
                                                    errou();
                                                  }
                                                }

                                                if (numeros == '5' &&
                                                    nivel4 == true) {
                                                  setState(() {
                                                    botaoQuatro = false;
                                                    botaoCinco = true;
                                                    isPlaying = true;
                                                    mudarNivel5();
                                                    controller.play();
                                                    fecharComemoracao4();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    telaOlhos5 = true;
                                                  });
                                                } else {
                                                  if (numeros != '5' &&
                                                      nivel4) {
                                                    errou();
                                                  }
                                                }

                                                if (numeros == '6' &&
                                                    nivel5 == true) {
                                                  setState(() {
                                                    botaoCinco = false;
                                                    botaoSeis = true;
                                                    isPlaying = true;
                                                    mudarNivel6();
                                                    controller.play();
                                                    fecharComemoracao5();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    telaOlhos6 = true;
                                                  });
                                                } else {
                                                  if (numeros != '6' &&
                                                      nivel5) {
                                                    errou();
                                                  }
                                                }

                                                if (numeros == '7' &&
                                                    nivel6 == true) {
                                                  setState(() {
                                                    botaoSeis = false;
                                                    botaoSete = true;
                                                    isPlaying = true;
                                                    mudarNivel7();
                                                    controller.play();
                                                    fecharComemoracao2();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    telaOlhos3 = true;
                                                  });
                                                } else {
                                                  if (numeros != '7' &&
                                                      nivel6) {
                                                    errou();
                                                  }
                                                }

                                                if (numeros == '8' &&
                                                    nivel7 == true) {
                                                  setState(() {
                                                    botaoSete = false;
                                                    botaoOito = true;
                                                    isPlaying = true;
                                                    mudarNivel8();
                                                    controller.play();
                                                    fecharComemoracao3();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    telaOlhos4 = true;
                                                  });
                                                } else {
                                                  if (numeros != '8' &&
                                                      nivel7) {
                                                    errou();
                                                  }
                                                }

                                                if (numeros == '9' &&
                                                    nivel8 == true) {
                                                  setState(() {
                                                    botaoOito = false;
                                                    botaoNove = true;
                                                    isPlaying = true;
                                                    mudarNivel9();
                                                    controller.play();
                                                    fecharComemoracao4();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    telaOlhos5 = true;
                                                  });
                                                } else {
                                                  if (numeros != '9' &&
                                                      nivel8) {
                                                    errou();
                                                  }
                                                }

                                                if (numeros == '10' &&
                                                    nivel9 == true) {
                                                  setState(() {
                                                    botaoNove = false;
                                                    botaoDez = true;
                                                    isPlaying = true;
                                                    controller.play();
                                                    fecharComemoracao5();
                                                    telaMedalha = true;
                                                    calc = false;
                                                    medalha.play('ganhou2.wav');
                                                    mudarPositivo();
                                                  });
                                                } else {
                                                  if (numeros != '10' &&
                                                      nivel9) {
                                                    errou();
                                                  }
                                                }
                                              },
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.10,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.14,
                                                  child:
                                                      const RiveAnimation.asset(
                                                    'assets/igual.riv',
                                                    stateMachines: ['anime'],
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Visibility(
                              visible: isPlaying,
                              child: Align(
                                alignment: AlignmentDirectional(0.2, -0.9),
                                child: ConfettiWidget(
                                  confettiController: controller,
                                  shouldLoop: true,
                                  blastDirectionality:
                                      BlastDirectionality.explosive,
                                  emissionFrequency: 0.01,
                                  numberOfParticles: 50,
                                  minBlastForce: 5,
                                  maxBlastForce: 50,
                                ),
                              ),
                            ),
                            Visibility(
                              visible: instruirBotao1 && nivel1,
                              child: Align(
                                alignment: AlignmentDirectional(-0.55, 0.90),
                                child: GestureDetector(
                                  onTap: () {
                                    teclarUm();
                                    setState(() {
                                      setarValor('1');
                                      operacao = true;
                                      instruirBotao1 = false;
                                      instruirBotao2 = true;
                                      vozInstruir2();
                                    });
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.20,
                                    height: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Stack(
                                      children: [
                                        const RiveAnimation.asset(
                                          'assets/ligarDica.riv',
                                          animations: ['click'],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: instruirBotao2 && nivel1,
                              child: Align(
                                alignment: AlignmentDirectional(0.5, 1),
                                child: GestureDetector(
                                  onTap: () {
                                    teclarUm();
                                    setState(() {
                                      operacao = true;
                                      instruirBotao2 = false;
                                      instruirBotao3 = true;
                                      setarValor('+');
                                    });
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.20,
                                    height: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Stack(
                                      children: [
                                        const RiveAnimation.asset(
                                          'assets/ligarDica.riv',
                                          animations: ['click'],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: instruirBotao3 && nivel1,
                              child: Align(
                                alignment: AlignmentDirectional(-0.55, 0.90),
                                child: GestureDetector(
                                  onTap: () {
                                    teclarUm();
                                    setState(() {
                                      setarValor('1');
                                      operacao = true;
                                      instruirBotao3 = false;
                                      instruirBotao4 = true;
                                      vozInstruir3();
                                    });
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.20,
                                    height: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Stack(
                                      children: [
                                        const RiveAnimation.asset(
                                          'assets/ligarDica.riv',
                                          animations: ['click'],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: instruirBotao4 && nivel1,
                              child: Align(
                                alignment: AlignmentDirectional(0.20, 1),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      operacao = true;
                                      instruirBotao4 = false;
                                      teclarUm();
                                      if (numeros[numeros.length - 1] == '+') {
                                        fazerCalculo = false;
                                      } else {
                                        fazerCalculo = true;
                                      }

                                      if (fazerCalculo) {
                                        realizarCalculo();
                                        quantNumeros = numeros.length;
                                      }
                                      if (numeros == '2' && nivel1 == true) {
                                        setState(() {
                                          errou();
                                          naoerrou();

                                          isPlaying = true;
                                          botaoDois = true;
                                          mudarNivel2();
                                          controller.play();
                                          fecharComemoracao1();
                                          acertouNum.play('ganhou.wav');
                                          telaOlhos2 = true;
                                        });
                                      } else {
                                        if (numeros != '2' && nivel1) {
                                          errou();
                                        }
                                      }
                                    });
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.20,
                                    height: MediaQuery.of(context).size.width *
                                        0.30,
                                    child: Stack(
                                      children: [
                                        const RiveAnimation.asset(
                                          'assets/ligarDica.riv',
                                          animations: ['click'],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
