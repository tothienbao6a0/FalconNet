import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class SeniorAssassins extends StatefulWidget {
  @override
  _SeniorAssassinsState createState() => _SeniorAssassinsState();
}

class _SeniorAssassinsState extends State<SeniorAssassins> {
  List<String> teams = [
    "Team 1: Bao",
    "Team 2: Ray, Om, Adithya",
    "Team 3: Jack, Shaurya, Tomaz"
  ];
  Map<String, int> scores = {"Team 1": 100, "Team 2": 20, "Team 3": 15};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Senior Assassins"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Text("Teams:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: teams.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(teams[index]),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Text("Scoreboard:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: scores.keys.length,
              itemBuilder: (BuildContext context, int index) {
                String team = scores.keys.toList()[index];
                int? score = scores[team];
                return ListTile(
                  title: Text("$team: $score"),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(14),
            child: PDFView(
              filePath: 'icons/Thesisbaoto.pdf',
            ),
          )
        ],
      ),
    );
  }
}
