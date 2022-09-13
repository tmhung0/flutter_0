// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'secondRoute.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Tutorial',
      home: TutorialHome(),
    ),
  );
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 100,
                height: 70,
                child: Image.asset('assets/images/3.png'),
              ),
              Container(
                child: const Text(
                  'hello world',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                      Container(
                        width: 50,
                        child: Image.asset('assets/images/1.jpg'),
                      ),
                      Container(
                        width: 100,
                        child: Image.asset('assets/images/2.jpg'),
                      ),
                      Container(
                        width: 50,
                        child: Image.asset('assets/images/1.jpg'),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios)),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                    icon: const Icon(Icons.ac_unit),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondRoute()),
                      );
                    },
                    label: const Text('Next page')),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Row(children: [
      //   Expanded(
      //       flex: 1,
      //       child: ElevatedButton.icon(
      //         icon: const Icon(Icons.add),
      //         onPressed: () {},
      //         label: const Text('Click me'),
      //       )),
      //   Expanded(
      //       flex: 1,
      //       child: ElevatedButton.icon(
      //         icon: const Icon(Icons.add),
      //         onPressed: () {},
      //         label: const Text('Click '),
      //       ))
      // ]),
    );
  }
}
