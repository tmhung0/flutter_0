import 'package:flutter/material.dart';

class TabControl extends StatefulWidget {
  const TabControl({super.key});

  @override
  State<TabControl> createState() => _TabControlState();
}

class _TabControlState extends State<TabControl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text('Left'),
                ),
                Tab(
                  child: Text('Center'),
                ),
                Tab(
                  child: Text('Left'),
                ),
              ],
            ),
            title: const Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Column(children: [
                Row(
                  children: const [Icon(Icons.star), Text('17 Review')],
                ),
                Row(
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.tiktok),
                        Text("ABC"),
                        Text("45 min")
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.tiktok),
                        Text("ABC"),
                        Text("45 min")
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.tiktok),
                        Text("ABC"),
                        Text("45 min")
                      ],
                    ),
                  ],
                ),
              ]),
              Column(children: [
                Row(
                  children: const [Icon(Icons.star), Text('17 Review')],
                ),
                Row(
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.tiktok),
                        Text("ABC"),
                        Text("45 min")
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.tiktok),
                        Text("ABC"),
                        Text("45 min")
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.tiktok),
                        Text("ABC"),
                        Text("45 min")
                      ],
                    ),
                  ],
                ),
              ]),
              const Center(child: Text('tu'))
            ],
          ),
        ),
      ),
    );
  }
}
