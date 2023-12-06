import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});

  final String hint;
  final int maxLines;

  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Gap(24),
      TextFormField(
          onSaved: onSaved,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Field is required';
            } else {
              return null;
            }
          },
          maxLines: maxLines,
          cursorColor: Colors.tealAccent,
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.tealAccent),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(Colors.tealAccent)))
    ]);
  }
}

OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: color ?? Colors.white));
