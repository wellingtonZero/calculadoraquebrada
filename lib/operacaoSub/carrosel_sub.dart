import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CarroselSub extends StatefulWidget {
  @override
  State<CarroselSub> createState() => _CarroselSubState();
}

class _CarroselSubState extends State<CarroselSub> {
  final controller = PageController(initialPage: 0);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guia de Subtração')),
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
                      Text('Subtraindo com dois',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('algarismo com o 1 fixo',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 - 3 = 2', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 - 4 = 3', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 - 5 = 4', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 - 6 = 5', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 - 7 = 6', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 - 8 = 7', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('1 - 9 = 8', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
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
                      Text('Subtraindo com dois',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('algarismos', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('5 - 2 = 3', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('4 - 2 = 2', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('7 - 3 = 4', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('7 - 3 = 4', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('6 - 3 = 3', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('5 - 4 = 1', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),

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
                      Text('Subtraindo com três',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('algarismos', style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('5 - 3 - 1 = 1',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('5 - 2 - 1 = 2',
                          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05)),
                      Text('5 - 3 - 1 = 1',
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
