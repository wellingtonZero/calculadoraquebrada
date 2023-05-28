import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CarroselSoma extends StatefulWidget {
  @override
  State<CarroselSoma> createState() => _CarroselSomaState();
}

class _CarroselSomaState extends State<CarroselSoma> {
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guia de Soma')),
      backgroundColor: Color.fromARGB(255, 250, 221, 160),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 20, bottom: 40, right: 30, left: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset(
                        'assets/folha.png',
                      ).image,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 30,
                        offset: Offset(20, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.40,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.44,
                        child: RiveAnimation.asset(
                          'assets/umAjuda.riv',
                          animations: ['move1'],
                          //fit: BoxFit.cover,
                        ),
                      ),
                      Text('Nível Fácil',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.10,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold)),
                      Text('Somando com dois',
                          style: TextStyle(fontSize: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.05,)),
                      Text('algarismo com o 1 fixo',
                          style: TextStyle(fontSize: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.05,)),
                      Text('1 + 1 = 2', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 + 2 = 3', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 + 3 = 4', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 + 4 = 5', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 + 5 = 6', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 + 7 = 8', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 + 8 = 9', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 + 9 = 10', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 20, bottom: 40, right: 30, left: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset(
                        'assets/folha.png',
                      ).image,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 30,
                        offset: Offset(20, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.40,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.44,
                        child: RiveAnimation.asset(
                          'assets/doisAjuda.riv',
                          animations: ['move1'],
                          //fit: BoxFit.cover,
                        ),
                      ),
                      Text('Nível Normal',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.10,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold)),
                      Text('Somando com dois algarismos',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 + 2 = 4', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 + 3 = 5', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('3 + 3 = 6', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('3 + 4 = 7', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('4 + 4 = 8', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('4 + 5 = 9', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('5 + 5 = 10', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 + 6 = 8', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 + 8 = 10', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 20, bottom: 45, right: 30, left: 30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset(
                        'assets/folha.png',
                      ).image,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87,
                        blurRadius: 30,
                        offset: Offset(20, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.40,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.44,
                        child: RiveAnimation.asset(
                          'assets/tresAjuda.riv',
                          animations: ['move1'],
                          //fit: BoxFit.cover,
                        ),
                      ),
                      Text('Nível Difícil',
                          style: TextStyle(
                              fontSize: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.10,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold)),
                      Text('Somando com três',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('algarismos', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 + 1 + 1 = 3',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 + 2 + 2 = 5',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 + 2 + 2 = 6',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => controller.previousPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                ),
                child: Container(
                  width: 100,
                  height: 50,
                  child: const RiveAnimation.asset(
                    'assets/voltar.riv',
                    stateMachines: ['anime'],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => controller.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut,
                ),
                child: Container(
                  width: 100,
                  height: 50,
                  child: const RiveAnimation.asset(
                    'assets/avancar.riv',
                    stateMachines: ['anime'],
                  ),
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
