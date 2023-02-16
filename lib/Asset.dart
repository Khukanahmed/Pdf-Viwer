import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Book2 extends StatefulWidget {
  const Book2({super.key});

  @override
  State<Book2> createState() => _Book2State();
}

class _Book2State extends State<Book2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Book')),
        body: Container(height: 800, child: SfPdfViewer.asset("Asset/flutter_tutorial (1).pdf")));
  }
}
