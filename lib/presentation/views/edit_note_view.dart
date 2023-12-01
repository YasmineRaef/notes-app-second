import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app_2/presentation/views/bottom_sheet.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(children: [
              const Gap(70),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Edit", style: Theme.of(context).textTheme.labelLarge),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromRGBO(33, 150, 243, 0.5)),
                    child: const Center(child: Icon(Icons.edit)))
              ]),
              const TextFields(),
            ])));
  }
}
