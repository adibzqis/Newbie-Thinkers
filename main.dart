import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the pages for each tab
    final kTabPages = <Widget>[
      const Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
      const Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
      const Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
      const Center(
          child:
              Icon(Icons.account_circle, size: 64.0, color: Colors.tealAccent)),
    ];
    
    // Define the tabs
    final kTabs = <Tab>[
      const Tab(icon: Icon(Icons.cloud), text: 'Tab1'),
      const Tab(icon: Icon(Icons.alarm), text: 'Tab2'),
      const Tab(icon: Icon(Icons.forum), text: 'Tab3'),
      const Tab(icon: Icon(Icons.account_circle), text: 'Tab4'),
    ];

    return DefaultTabController(
      length: kTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Appbar Title'),
          backgroundColor: Colors.teal, // Adjust as needed
          bottom: TabBar(
            tabs: kTabs,
          ),
        ),
        body: TabBarView(
          children: kTabPages,
        ),
      ),
    );
  }
}
