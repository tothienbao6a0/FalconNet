import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class APBiologyGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AP Biology Guide"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Chapter 1: Introduction to Biology",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "In this chapter, you will learn about the fundamental concepts of biology, including the scientific method and cellular structure and function. You will also explore the history of biology and the major theories and discoveries that have shaped our understanding of life.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Chapter 2: The Chemical Basis of Life",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "In this chapter, you will learn about the important molecules and elements that make up living organisms, including carbohydrates, lipids, proteins, and nucleic acids. You will also learn about chemical reactions, enzymes, and metabolic pathways.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            //add more chapters here
            //below is the pdfViewer
            SizedBox(
                height: 500,
                width: 500,
                child: SfPdfViewer.asset('assets/AP Bio.pdf'))
          ],
        ),
      ),
    );
  }
}
