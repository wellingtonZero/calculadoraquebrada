import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CarroselMul extends StatefulWidget {
  @override
  State<CarroselMul> createState() => _CarroselMulState();
}

class _CarroselMulState extends State<CarroselMul> {
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guia de Multiplicação')),
      backgroundColor: Color.fromARGB(255, 250, 221, 160),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
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
                      Text('Multiplicando ',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('Tabuada do 2',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 x 1 = 2', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 x 2 = 4', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 x 3 = 6', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 x 4 = 8', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 x 5 = 10', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
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
                      Text('Multiplicação',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('Tabuada do 3, 4, 5', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('3 x 2 = 6', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('3 x 3 = 9', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('3 x 4 = 12', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 x 4 = 8', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('4 x 4 = 16', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('2 x 5 = 10', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('3 x 5 = 15', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
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
                      Text('Multiplicação com',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('operação de Soma', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('3 x 3 + 1 = 10',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('4 x 2 + 2 = 10',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('4 x 3 + 3 = 15',
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
