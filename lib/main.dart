import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_2/app/app.dart';
import 'package:notes_app_2/presentation/resources/note_model.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const NotesApp());
  await Hive.openBox('notes_box');
  Hive.registerAdapter(NoteModelAdapter());
}
