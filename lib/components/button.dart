import 'package:flutter/material.dart';

class RegulerButton extends StatelessWidget {
  final VoidCallback handlePress;
  final String label;
  const RegulerButton(
      {super.key, required this.handlePress, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: handlePress,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20),
            backgroundColor: const Color.fromRGBO(13, 153, 255, 1),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Text(
          this.label,
          style: TextStyle(fontSize: 18),
        ));
  }
}

class CameraButton extends StatelessWidget {
  final VoidCallback handlePress;
  const CameraButton({super.key, required this.handlePress});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: handlePress,
      icon: const Icon(Icons.image),
      style: IconButton.styleFrom(
          backgroundColor: Colors.blue, foregroundColor: Colors.white),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final VoidCallback handlePress;
  final String label;
  const OutlineButton(
      {super.key, required this.handlePress, required this.label});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: handlePress,
      style: OutlinedButton.styleFrom(
          side: const BorderSide(
              color: Color.fromRGBO(13, 153, 255, 1), width: 2)),
      child: Text(
        this.label,
        style: TextStyle(color: Color.fromRGBO(13, 153, 255, 1), fontSize: 18),
      ),
    );
  }
}
