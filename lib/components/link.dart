import 'package:flutter/material.dart';

class Link extends StatelessWidget {
  final VoidCallback handlePress;
  final String label;
  Link({super.key, required this.handlePress, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: this.handlePress,
      child: Text(
        this.label,
        style: TextStyle(color: const Color.fromARGB(255, 66, 148, 69)),
      ),
      style: TextButton.styleFrom(
          padding: EdgeInsets.all(0), overlayColor: Colors.transparent),
    );
  }
}
