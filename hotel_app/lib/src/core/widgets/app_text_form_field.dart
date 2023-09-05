import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  final String labelText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: const Color(0xFFf6f6f9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        style: Theme.of(context).textTheme.headlineMedium,
        cursorHeight: 16,
        cursorColor: const Color(0xFF14132A),
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 16),
            label: Text(
              labelText,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}
