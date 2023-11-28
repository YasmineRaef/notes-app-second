import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notes_app_2/presentation/widgets/custom_text_field.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(hint: "Title"),
        const CustomTextField(hint: "Content", maxLines: 5),
        const Gap(50),
        Container(
            width: MediaQuery.of(context).size.width,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(16)),
            child: const Center(
                child: Text("Add",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15))))
      ],
    );
  }
}
