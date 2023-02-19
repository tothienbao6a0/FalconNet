import 'package:flutter/material.dart';

import 'tools/flashcard.dart';

class LatinIII extends StatefulWidget {
  @override
  _LatinIIICreateState createState() => _LatinIIICreateState();
}

class _LatinIIICreateState extends State<LatinIII> {
  List<Flashcard> flashcards = [];
  late String userInputWord;
  late String userInputTranslation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latin III"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: flashcards.length,
              itemBuilder: (BuildContext context, int index) {
                return FlashcardWidget(flashcard: flashcards[index]);
              },
            ),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Enter the Latin Word'),
            onChanged: (text) {
              userInputWord = text;
            },
          ),
          TextField(
            decoration:
                InputDecoration(labelText: 'Enter the English translation'),
            onChanged: (text) {
              userInputTranslation = text;
            },
          ),
          ElevatedButton(
            child: Text("Add Flashcard"),
            onPressed: () {
              setState(() {
                flashcards.add(Flashcard(userInputWord, userInputTranslation));
              });
            },
          ),
        ],
      ),
    );
  }
}
