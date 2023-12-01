import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app_2/presentation/resources/theme.dart';
import 'package:notes_app_2/presentation/widgets/custom_text_field.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextFields(),
        const Gap(50),
        Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(16)),
            child: Center(
                child: Text("Add",
                    style: Theme.of(context).textTheme.labelMedium)))
      ],
    );
  }
}

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(hint: "Title"),
        CustomTextField(hint: "Content", maxLines: 5),
      ],
    );
  }
}
