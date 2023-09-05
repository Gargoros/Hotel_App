import 'package:flutter/material.dart';

class ParticularityCard extends StatelessWidget {
  final String particularity;
  const ParticularityCard({super.key, required this.particularity});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFfbfbfc),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Text(
        particularity,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
