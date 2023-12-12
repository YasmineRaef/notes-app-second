import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_2/cubits/cubit/add_note_cubit_cubit.dart';
import 'package:notes_app_2/presentation/notes_view.dart';
import 'package:notes_app_2/presentation/resources/theme.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: MaterialApp(
          home: const NotesView(),
          debugShowCheckedModeBanner: false,
          theme: appTheme()),
    );
  }
}
