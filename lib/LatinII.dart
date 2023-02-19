import 'package:flutter/material.dart';

class LatinII extends StatefulWidget {
  @override
  _LatinIIState createState() => _LatinIIState();
}

class _LatinIIState extends State<LatinII> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latin II'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Argonauta'),
            subtitle: Text('Argonaut'),
          ),
          ListTile(
            title: Text('Auriga'),
            subtitle: Text('Ray'),
          ),
          ListTile(
            title: Text('Medea'),
            subtitle: Text('Witch'),
          ),
          ListTile(
            title: Text('Iason'),
            subtitle: Text('Jason'),
          ),
          ListTile(
            title: Text('Pelias'),
            subtitle: Text('King'),
          ),
          ListTile(
            title: Text('Medea'),
            subtitle: Text('Witch'),
          ),
        ],
      ),
    );
  }
}
