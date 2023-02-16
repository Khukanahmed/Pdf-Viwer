import 'package:book/Man.dart';
import 'package:book/Woman.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Text Appbar'),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.accessibility,
                ),
                text: 'Men',
              ),
              Tab(
                icon: Icon(Icons.access_alarm_outlined),
                text: 'Woman',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Man(),
              Woman()
            ],
          )),
    );
  }
}
