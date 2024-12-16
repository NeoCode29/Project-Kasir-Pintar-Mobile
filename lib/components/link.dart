import 'package:flutter/material.dart';

class Link extends StatelessWidget {
  final VoidCallback handlePress;
  final String label;
  const Link({super.key, required this.handlePress, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: handlePress,
      style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0), overlayColor: Colors.transparent),
      child: Text(
        this.label,
        style: TextStyle(color: const Color.fromARGB(255, 66, 148, 69)),
      ),
    );
  }
}
