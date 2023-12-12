import 'package:flutter/material.dart';
import 'package:notes_app_2/presentation/views/edit_note_view.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const EditNote();
          }));
        },
        child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(16)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              ListTile(
                  title: Text("Note 1",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 25, color: Colors.black)),
                  subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text("Yasmine Raef Mohamed Mohamed El-Sayed",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                  color: const Color.fromRGBO(0, 0, 0, 0.5)))),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete,
                          size: 30, color: Colors.black))),
              Text("01 JAN 2004",
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: const Color.fromRGBO(0, 0, 0, 0.5)))
            ])));
  }
}
