import 'package:audioplayers/audioplayers.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:math_expressions/math_expressions.dart';

class SubFacil extends StatefulWidget {
  @override
  State<SubFacil> createState() => _SubFacilState();
}

class _SubFacilState extends State<SubFacil> {
  StateMachineController ctrCalc;
  SMIInput<bool> erro;
  final AudioCache tecla = AudioCache();
  final AudioCache acertouNum = AudioCache();
  final AudioCache medalha = AudioCache();
  bool calc = true;
  bool maoPositivo = false;
  bool fechar = true;
  bool telaOlhos = true;
  bool telaOlhos2 = false;
  bool telaMedalha = false;
  String numeros = '0';
  bool fazerCalculo = false;
  int quantNumeros = 0;
  bool operacao = false;
  int zero = 0;
  bool botaoUm = true;
  bool botaoDois = false;
  bool botaoTres = true;
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
  bool dicas = true;
  bool balao = false;
  int erros = 0;
  bool dica1 = false;
  bool isPlaying = false;

  final controller = ConfettiController();

  void gizQuadro() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        final player = AudioCache();
        player.play('giz.wav');
      });
    });
  }

  void errou() {
    erro?.change(true);
  }

  void naoerrou() {
    erro?.change(false);
  }

  void teclarUm() {
    tecla.play('tecla.wav');
  }

  void gizQuadro2() {
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        final player = AudioCache();
        player.play('giz.wav');
      });
    });
  }

  void ligueOn() {
    final ligar = AudioCache();
    ligar.play('ligueOn.mp3');
  }

  void deletarSub() {
    final delSub = AudioCache();
    delSub.play('deletesub.mp3');
  }

  void fecharComemoracao() {
    Future.delayed(Duration(seconds: 7), () {
      setState(() {
        controller.stop();
        telaOlhos2 = false;
        telaOlhos = true;
      });
    });
  }

  void mudarNivel2() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        gizQuadro2();
        nivel1 = false;
        nivel2 = true;
      });
    });
  }

  void mudarNivel3() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        gizQuadro2();
        nivel2 = false;
        nivel3 = true;
      });
    });
  }

  void mudarNivel4() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        gizQuadro2();
        nivel3 = false;
        nivel4 = true;
      });
    });
  }

  void mudarNivel5() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        gizQuadro2();
        nivel4 = false;
        nivel5 = true;
      });
    });
  }

  void mudarNivel6() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        gizQuadro2();
        nivel5 = false;
        nivel6 = true;
      });
    });
  }

  void mudarNivel7() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        gizQuadro2();
        nivel6 = false;
        nivel7 = true;
      });
    });
  }

  void mudarNivel8() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        gizQuadro2();
        nivel7 = false;
        nivel8 = true;
      });
    });
  }

  void mudarNivel9() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        gizQuadro2();
        nivel8 = false;
        nivel9 = true;
      });
    });
  }

  void mudarNivel10() {
    Future.delayed(Duration(seconds: 9), () {
      setState(() {
        gizQuadro2();
        nivel9 = false;
        nivel10 = true;
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
    ContextModel cm = new ContextModel();
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
        title: Text('SUBTRAÇÃO - FÁCIL'),
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
                          gizQuadro();
                          mudarAnime();
                          fechar = false;
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
                          child: const RiveAnimation.asset('assets/sala1.riv',
                              animations: ['sala'], fit: BoxFit.cover),
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
                      visible: telaMedalha,
                      child: Align(
                        alignment: AlignmentDirectional(0.15, -0.97),
                        child: Container(
                            height: 500,
                            width: 600,
                            child: const RiveAnimation.asset(
                              'assets/medalPrata.riv',
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
                                            //visor calculadora
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
                                          //botao ligar
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
                                                  balao = false;
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
                                          //botao delete
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
                                          Visibility(
                                            visible: botaoUm,
                                            child: Align(
                                              alignment:
                                                  const AlignmentDirectional(
                                                      -0.82, 0.61),
                                              child: GestureDetector(
                                                onTap: () {
                                                  teclarUm();
                                                  if (telaOlhos) {
                                                    ligueOn();
                                                  }
                                                  if (quantNumeros < 7) {
                                                    setarValor('1');
                                                    quantNumeros++;
                                                    operacao = true;
                                                    fazerCalculo = true;
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
                                                      'assets/um.riv',
                                                      stateMachines: ['anime'],
                                                      fit: BoxFit.cover,
                                                    )),
                                              ),
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
                                            visible: telaOlhos,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.15, -0.97),
                                              child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.37,
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
                                                      0.40,
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
                                            visible: telaOlhos,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.9, -0.00),
                                              child: GestureDetector(
                                                onTap: () {
                                                  teclarUm();
                                                  setState(() {
                                                    telaOlhos = false;
                                                    numeros = '0';
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
                                                      RiveAnimation.asset(
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
                                            visible: erros > 1,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -0.75, -0.22),
                                              child: GestureDetector(
                                                onTap: () {
                                                  teclarUm();
                                                  setState(() {
                                                    balao = true;
                                                    erros = 0;
                                                    dicas = false;
                                                    dica1 = true;
                                                  });
                                                },
                                                child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.17,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.19,
                                                    child: const RiveAnimation
                                                        .asset(
                                                      'assets/dicas.riv',
                                                      animations: ['dica'],
                                                    )),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.85, 0.61),
                                            child: GestureDetector(
                                              onTap: () {
                                                if (telaOlhos) {
                                                  ligueOn();
                                                }
                                                teclarUm();
                                                naoerrou();

                                                if (quantNumeros < 7 &&
                                                    operacao) {
                                                  setarValor('-');
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
                                                    'assets/sub.riv',
                                                    stateMachines: ['anime'],
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.28, 0.81),
                                            child: GestureDetector(
                                              onTap: () {
                                                teclarUm();
                                                if (numeros[
                                                        numeros.length - 1] ==
                                                    '-') {
                                                  deletarSub();
                                                  fazerCalculo = false;
                                                } else {
                                                  fazerCalculo = true;
                                                }

                                                if (fazerCalculo) {
                                                  realizarCalculo();
                                                  quantNumeros = numeros.length;
                                                }
                                                if (numeros == '2' &&
                                                        nivel1 == true ||
                                                    numeros == '-2' &&
                                                        nivel1 == true) {
                                                  setState(() {
                                                    botaoTres = false;
                                                    botaoQuatro = true;

                                                    isPlaying = true;
                                                    mudarNivel2();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    controller.play();
                                                    fecharComemoracao();
                                                    telaOlhos2 = true;
                                                  });
                                                } else {
                                                  if (numeros != '2' &&
                                                          nivel1 ||
                                                      numeros != '-2' &&
                                                          nivel1) {
                                                    errou();
                                                    setState(() {});
                                                  }
                                                }

                                                if (numeros == '3' &&
                                                        nivel2 == true ||
                                                    numeros == '-3' &&
                                                        nivel2 == true) {
                                                  setState(() {
                                                    botaoQuatro = false;
                                                    botaoCinco = true;
                                                    mudarNivel3();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    controller.play();
                                                    fecharComemoracao();
                                                    telaOlhos2 = true;
                                                  });
                                                } else {
                                                  if (numeros != '3' &&
                                                          nivel2 ||
                                                      numeros != '-3' &&
                                                          nivel2) {
                                                    errou();
                                                    setState(() {});
                                                  }
                                                }

                                                if (numeros == '4' &&
                                                        nivel3 == true ||
                                                    numeros == '-4' &&
                                                        nivel3 == true) {
                                                  setState(() {
                                                    botaoCinco = false;
                                                    botaoSeis = true;
                                                    isPlaying = true;
                                                    mudarNivel4();
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    controller.play();
                                                    fecharComemoracao();
                                                    telaOlhos2 = true;
                                                  });
                                                } else {
                                                  if (numeros != '4' &&
                                                          nivel3 ||
                                                      numeros != '-4' &&
                                                          nivel3) {
                                                    errou();
                                                    setState(() {});
                                                  }
                                                }

                                                if (numeros == '5' &&
                                                        nivel4 == true ||
                                                    numeros == '-5' && nivel4) {
                                                  setState(() {
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    botaoSeis = false;
                                                    botaoSete = true;
                                                    mudarNivel5();
                                                    controller.play();
                                                    fecharComemoracao();
                                                    telaOlhos2 = true;
                                                  });
                                                } else {
                                                  if (numeros != '5' &&
                                                          nivel4 ||
                                                      numeros != '-5' &&
                                                          nivel4) {
                                                    errou();
                                                    setState(() {});
                                                  }
                                                }

                                                if (numeros == '6' &&
                                                        nivel5 == true ||
                                                    numeros == '-6' &&
                                                        nivel5 == true) {
                                                  setState(() {
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    botaoSete = false;
                                                    botaoOito = true;
                                                    mudarNivel6();
                                                    controller.play();
                                                    fecharComemoracao();
                                                    telaOlhos2 = true;
                                                  });
                                                } else {
                                                  if (numeros != '6' &&
                                                          nivel5 ||
                                                      numeros != '-6' &&
                                                          nivel5) {
                                                    errou();
                                                    setState(() {});
                                                  }
                                                }

                                                if (numeros == '7' &&
                                                        nivel6 == true ||
                                                    numeros == '-7' &&
                                                        nivel6 == true) {
                                                  setState(() {
                                                    botaoOito = false;
                                                    botaoNove = true;
                                                    acertouNum
                                                        .play('ganhou.wav');
                                                    isPlaying = true;
                                                    mudarNivel7();
                                                    controller.play();
                                                    fecharComemoracao();
                                                    telaOlhos2 = true;
                                                  });
                                                } else {
                                                  if (numeros != '7' &&
                                                          nivel6 ||
                                                      numeros != '-7' &&
                                                          nivel6) {
                                                    errou();
                                                    setState(() {});
                                                  }
                                                }

                                                if (numeros == '8' &&
                                                        nivel7 == true ||
                                                    numeros == '-8' && nivel8) {
                                                  setState(() {
                                                    medalha.play('ganhou2.wav');
                                                    botaoOito = false;
                                                    botaoNove = true;
                                                    isPlaying = true;
                                                    controller.play();
                                                    fecharComemoracao();
                                                    telaMedalha = true;
                                                    calc = false;
                                                    mudarPositivo();
                                                  });
                                                } else {
                                                  if (numeros != '8' &&
                                                          nivel7 ||
                                                      numeros != '-8' &&
                                                          nivel7) {
                                                    errou();
                                                    setState(() {});
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
