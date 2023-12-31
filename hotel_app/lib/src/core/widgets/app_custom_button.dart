import 'package:flutter/material.dart';

class AppCustomButton extends StatelessWidget {
  final void Function() navigatTo;
  const AppCustomButton({
    super.key,
    required this.buttonText,
    required this.navigatTo,
  });
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 15, bottom: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF0d72ff),
        ),
        height: 50,
        width: 350,
        child: InkWell(
          onTap: navigatTo,
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.labelLarge,
            textAlign: TextAlign.center,
          ),
        ));
  }
}
