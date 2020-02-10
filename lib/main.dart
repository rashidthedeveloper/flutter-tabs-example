import 'package:flutter/material.dart';
import 'package:flutter_tabs_example/tab1.dart';
import 'package:flutter_tabs_example/tab2.dart';
import 'package:flutter_tabs_example/tab3.dart';

void main() {
  runApp(FlutterTabsExample());
}

class FlutterTabsExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          
          appBar: AppBar(
            title: Center(child:Text('Flutter Tabs Example')),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.local_movies),text: 'Tab 1', ),
                Tab(icon: Icon(Icons.face), text: 'Tab 2',),
                Tab(icon: Icon(Icons.favorite), text: 'Tab 3',),
              ],
            ),
            // title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Tab1(),
              Tab2(),
              Tab3()
            ],
          ),
        ),
      ),
    );
  }
}