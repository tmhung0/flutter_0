// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/form.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  int move = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyCustomForm()),
                );
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/images/3.png'),
          Column(
            crossAxisAlignment: (move == 1)
                ? CrossAxisAlignment.start
                : (move == 2)
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 180,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: Row(children: [
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Icon(Icons.star, color: Colors.red),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            '170 Reviews',
                            style: TextStyle(fontSize: 14),
                          ),
                        )
                      ]),
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Icon(
                              Icons.date_range,
                              color: Colors.green,
                            ),
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text('PREP'),
                            ),
                            Text('45 min')
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.timer,
                              color: Colors.green,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('COOK'),
                            ),
                            Text('1 hr')
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(
                              Icons.solar_power_rounded,
                              color: Colors.green,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('FEEDS'),
                            ),
                            Text('4-9')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //button

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //btn left
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              move = 1;
                            });
                          },
                          child: const Text('left')),

                      //btn center
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              move = 2;
                            });
                          },
                          child: const Text('center')),
                      //btn right
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              move = 3;
                            });
                          },
                          child: const Text('right'))
                    ],
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
