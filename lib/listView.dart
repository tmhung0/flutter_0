import 'package:flutter/material.dart';
import 'package:flutter_application_1/tabController.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: const Text(title),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TabControl()));
                },
                icon: const Icon(Icons.arrow_forward))
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                child: Text(
                  'Item ${index + 1}',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
