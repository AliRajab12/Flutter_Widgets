import 'package:flutter/material.dart';

class ContainerTestScreen extends StatelessWidget {
  const ContainerTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Container Test Screen"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width *
                      0.25, // 25% of the screen's width
                  height: MediaQuery.of(context).size.height *
                      0.25, // 25% of the screen's height,
                  decoration: const BoxDecoration(
                      color: Color(0xFF3B7080),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 7,
                            spreadRadius: 7,
                            color: Colors.amber,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(-30, 30)) // X and Y Axis
                      ]),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: const BoxDecoration(
                              color: Colors.amberAccent,
                              shape: BoxShape.circle),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                          transform: Matrix4.rotationZ(-0.2),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFFADE25D), Color(0xFF3A5743)]),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 150),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width *
                      0.25, // 25% of the screen's width
                  height: MediaQuery.of(context).size.height *
                      0.25, // 25% of the screen's height,
                  decoration: const BoxDecoration(
                      color: Color(0xFF3B7080),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 7,
                            spreadRadius: 7,
                            color: Colors.amber,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(-30, 30)) // X and Y Axis
                      ]),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: const BoxDecoration(
                              color: Colors.amberAccent,
                              shape: BoxShape.circle),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                          transform: Matrix4.rotationZ(-0.2),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFFADE25D), Color(0xFF3A5743)]),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
