import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app_2/presentation/views/bottom_sheet.dart';
import 'package:notes_app_2/presentation/widgets/note_card.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  builder: (context) {
                    return const Padding(
                        padding: EdgeInsets.all(16), child: BottomSheetView());
                  });
            },
            child: const Icon(Icons.add, size: 35)),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(children: [
              const Gap(70),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("My Notes App",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                Container(
                    height: 50,
                    width: 50,
                    color: const Color.fromRGBO(33, 150, 243, 0.5),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(16)),
                    child: const Center(child: Icon(Icons.search)))
              ]),
              const Expanded(child: NotesListView())
            ])));
  }
}

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8), child: NoteCard());
    });
  }
}
