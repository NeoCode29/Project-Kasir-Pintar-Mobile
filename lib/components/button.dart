import 'package:flutter/material.dart';

class RegulerButton extends StatelessWidget {
  final VoidCallback handlePress;
  final String label;
  RegulerButton({super.key, required this.handlePress, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: handlePress,
        child: Text(
          this.label,
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20),
            backgroundColor: Color.fromRGBO(13, 153, 255, 1),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))));
  }
}

class CameraButton extends StatelessWidget {
  final VoidCallback handlePress;
  CameraButton({super.key, required this.handlePress});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: this.handlePress,
      icon: Icon(Icons.image),
      style: IconButton.styleFrom(
          backgroundColor: Colors.blue, foregroundColor: Colors.white),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final VoidCallback handlePress;
  final String label;
  OutlineButton({super.key, required this.handlePress, required this.label});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: this.handlePress,
      child: Text(
        this.label,
        style: TextStyle(color: Color.fromRGBO(13, 153, 255, 1), fontSize: 18),
      ),
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: Color.fromRGBO(13, 153, 255, 1), width: 2)),
    );
  }
}
