import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app_2/views/widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Gap(70),
          CustomAppBar(),
        ],
      ),
    );
  }
}
