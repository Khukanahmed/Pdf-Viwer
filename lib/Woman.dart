import 'package:flutter/material.dart';

class Woman extends StatefulWidget {
  const Woman({super.key});

  @override
  State<Woman> createState() => _WomanState();
}

class _WomanState extends State<Woman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text('Hello World ')),
      ),
    );
  }
}
