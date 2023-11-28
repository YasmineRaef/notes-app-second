import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.teal, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text("Note 1",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text("Yasmine Raef Mohamed Mohamed El-Sayed",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                    ))),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete, size: 30, color: Colors.black)),
          ),
          Text(
            "Jan 01 , 2004",
            style: TextStyle(color: Colors.black.withOpacity(.5)),
          ),
        ],
      ),
    );
  }
}
