import 'package:flutter/material.dart';

class FlashcardWidget extends StatelessWidget {
  final Flashcard flashcard;

  const FlashcardWidget({Key? key, required this.flashcard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          Text(flashcard.latinWord),
          Text(flashcard.englishTranslation),
        ],
      ),
    );
  }
}

class Flashcard {
  String latinWord;
  String englishTranslation;

  Flashcard(this.latinWord, this.englishTranslation);
}
