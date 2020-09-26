import 'package:flutter/material.dart';
import './screens/note_list.dart';
import './screens/NoteDetails.dart';

void main() {
  runApp(MaterialApp(
    title: 'NoteKeeper App',
    home: NoteList(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.deepPurple,
    ),
  ));
}
