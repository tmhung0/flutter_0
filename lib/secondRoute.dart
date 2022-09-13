// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/list_color.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Row(children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.star, color: Colors.red),
                      const Icon(Icons.star, color: Colors.red),
                      const Icon(Icons.star, color: Colors.red),
                      const Icon(Icons.star, color: Colors.grey),
                      const Icon(Icons.star, color: Colors.grey),
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
              Container(
                child: Row(
                  children: [
                    Column(
                      children: const [
                        Icon(
                          Icons.date_range,
                          color: Colors.green,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
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
              ),
              ElevatedButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListColor()),
                    );
                  }),
                  child: Text('Click me'))
            ],
          ),
        ),
      ),
    );
  }
}
