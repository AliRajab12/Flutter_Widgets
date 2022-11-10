import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTestScreen extends StatelessWidget {
  const TextTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Center(
        child: Container(
            width: 250,
            height: 600,
            color: Colors.white,
            child: SelectionArea(
              child: Column(
                children: [
                  const Text(
                    textAlign: TextAlign.center,
                    "Welcome",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 35,
                        fontWeight: FontWeight.w100,
                        fontFamily: "Raleway",
                        decoration: TextDecoration.underline,
                        letterSpacing: 4),
                  ),
                  const SelectionContainer.disabled(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Welcome",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 35,
                          fontWeight: FontWeight.w100,
                          decoration: TextDecoration.underline,
                          letterSpacing: 4),
                    ),
                  ),

                  // Named constructer rich
                  const Text.rich(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      selectionColor: Colors.black87,
                      TextSpan(
                          text: "Hello",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                          children: [
                            TextSpan(
                                text: " Hello",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline)),
                            TextSpan(
                                text: " World!",
                                style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 35,
                                    color: Colors.red,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: " World!",
                                style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 35,
                                    color: Colors.red,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold))
                          ])),
                  // Add Custom underline

                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.amberAccent, width: 3))),
                    child: Text(
                        textAlign: TextAlign.center,
                        "أهلاً وسهلاً بكم",
                        softWrap: false,
                        style: GoogleFonts.cairo(
                          textStyle: const TextStyle(
                              color: Colors.blueGrey,
                              overflow: TextOverflow.ellipsis,
                              fontSize: 25,
                              fontWeight: FontWeight.w100,
                              shadows: [
                                BoxShadow(
                                  blurRadius: 8,
                                  spreadRadius: 8,
                                  color: Colors.lightBlue,
                                )
                              ],
                              letterSpacing: 4),
                        )),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
