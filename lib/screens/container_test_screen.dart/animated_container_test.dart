import 'package:flutter/material.dart';

class AnimatedContainerTestScreen extends StatefulWidget {
  const AnimatedContainerTestScreen({super.key});

  @override
  State<AnimatedContainerTestScreen> createState() =>
      _AnimatedContainerTestScreenState();
}

class _AnimatedContainerTestScreenState
    extends State<AnimatedContainerTestScreen> {
  bool _tapped = false;
  bool _scaled = false;
  final Color _fillColor = Colors.amber;
  double xOffset = 0.0, yOffset = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  xOffset = MediaQuery.of(context).size.width * 0.15;
                  yOffset = MediaQuery.of(context).size.height * 0.1;
                  _tapped = !_tapped;
                }),
                child: AnimatedContainer(
                  // transform: (_tapped)
                  //     ? Matrix4.translationValues(xOffset, yOffset, 0.0)
                  //     : Matrix4.translationValues(0.0, 0.0, 0.0),
                  onEnd: () => setState(() {
                    _scaled = !_scaled;
                  }),
                  duration: const Duration(seconds: 1),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: (!_tapped)
                      ? MediaQuery.of(context).size.width * 0.25
                      : MediaQuery.of(context).size.width *
                          0.5, // 50% of the screen's width
                  height: (!_tapped)
                      ? MediaQuery.of(context).size.height * 0.25
                      : MediaQuery.of(context).size.height *
                          0.5, // 50% of the screen's height,
                  decoration: BoxDecoration(
                      color: const Color(0xFF3B7080),
                      borderRadius: BorderRadius.only(
                          topLeft: (_tapped)
                              ? const Radius.circular(50)
                              : Radius.zero,
                          topRight: (!_tapped)
                              ? const Radius.circular(50)
                              : Radius.zero,
                          bottomLeft: (!_tapped)
                              ? const Radius.circular(50)
                              : Radius.zero,
                          bottomRight: (_tapped)
                              ? const Radius.circular(50)
                              : Radius.zero),
                      boxShadow: const [
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
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: (!_scaled)
                              ? MediaQuery.of(context).size.width * 0.1
                              : MediaQuery.of(context).size.width * 0.2,
                          height: (!_scaled)
                              ? MediaQuery.of(context).size.height * 0.1
                              : MediaQuery.of(context).size.height * 0.2,
                          decoration: BoxDecoration(
                              color: (_scaled) ? _fillColor : Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
