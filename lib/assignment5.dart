
import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5> {
  bool box1color = false;
  bool box2color = false;
  Widget build(BuildContext con) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Color Box'),
          backgroundColor: Colors.blue,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box1color ? Colors.redAccent : Colors.lightGreen,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          box1color = !box1color;
                        });
                      },
                      child: const Text("Color Box 1")),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: box2color ? Colors.amber : Colors.blueGrey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              box2color = !box2color;
                            });
                          },
                          child: Text('Color Box 2')),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
