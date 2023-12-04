import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app_2/app/app.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
  runApp(const NotesApp());
}
