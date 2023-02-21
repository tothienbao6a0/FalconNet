import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ComputerScienceA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AP CS A Study Guide'),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(20),
                child: SizedBox(
                    height: 500,
                    width: 500,
                    child: SfPdfViewer.asset(
                        'assets/AP Computer Science A.pdf')))));
  }
}
