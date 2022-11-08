import 'package:flutter/material.dart';

class RowColumnTestScreen extends StatelessWidget {
  const RowColumnTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 1 row contains 3 columns
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                color: Colors.green,
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                          "Hello World! Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!Hello World!"),
                    )
                  ],
                )),
            Column(
              /*
              main axis in the column is the vertical axis and the cross is the
              horizontal axis
              */
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.redAccent),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.yellowAccent),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.greenAccent),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.redAccent),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.yellowAccent),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.greenAccent),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
