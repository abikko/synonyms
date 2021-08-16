import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:synonyms/domain/model/word.dart';

class WordItem extends StatelessWidget {
  final String word;

  const WordItem({Key? key, required this.word}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      color: Colors.white70,
      shadowColor: Colors.black12,
      child: Center(
        child: Text(word),
      ),
    );
  }
}
