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
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            ListTile(
              title: const Text("Note 1",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  )),
              subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text("Yasmine Raef Mohamed Mohamed El-Sayed",
                      style: TextStyle(color: Colors.black.withOpacity(0.5)))),
              trailing: IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.delete, size: 30, color: Colors.black)),
            ),
            Text("Jan 01 , 2004",
                style: TextStyle(color: Colors.black.withOpacity(.5)))
          ])),
    );
  }
}
