import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  final VoidCallback onPressed;

  CustomFAB({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.add),
    );
  }
}
