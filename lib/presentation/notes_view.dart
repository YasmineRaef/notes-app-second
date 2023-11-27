import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app_2/presentation/views/bottom_sheet.dart';
import 'package:notes_app_2/presentation/views/notes_cards_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: BottomSheetView(),
                  );
                });
          },
          child: const Icon(
            Icons.add,
            size: 35,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              const Gap(70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "My Notes App",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(
                      child: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
              const Expanded(child: NotesListView()),
            ],
          ),
        ));
  }
}
