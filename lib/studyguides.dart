import 'package:flutter/material.dart';

class StudyGuides extends StatefulWidget {
  @override
  _StudyGuidesState createState() => _StudyGuidesState();
}

class _StudyGuidesState extends State<StudyGuides> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Study Guides'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Pink'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Purple'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Blue'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Green'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Orange'),
                ),
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Yellow'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
