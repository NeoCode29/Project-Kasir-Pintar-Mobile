import 'package:flutter/material.dart';

class RegularInput extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  RegularInput(
      {super.key,
      required this.label,
      required this.controller,
      this.placeholder = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.label,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: this.placeholder,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: const Color.fromRGBO(230, 230, 230, 1)),
          style:
              TextStyle(color: Color.fromRGBO(143, 139, 149, 1), fontSize: 12),
        )
      ],
    );
  }
}

class PasswordInput extends StatefulWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  const PasswordInput(
      {super.key,
      required this.label,
      required this.controller,
      this.placeholder = ""});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool isObsecure = true;

  void _togglePasswordVisibility() {
    setState(() {
      isObsecure = !isObsecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 8),
        TextField(
          obscureText: isObsecure,
          controller: widget.controller,
          decoration: InputDecoration(
              hintText: widget.placeholder,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: const Color.fromRGBO(230, 230, 230, 1),
              suffixIcon: IconButton(
                  onPressed: _togglePasswordVisibility,
                  icon: Icon(
                      isObsecure ? Icons.visibility : Icons.visibility_off))),
          style:
              TextStyle(color: Color.fromRGBO(143, 139, 149, 1), fontSize: 12),
        )
      ],
    );
  }
}

class NumberInput extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  NumberInput(
      {super.key,
      required this.label,
      required this.controller,
      this.placeholder = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.label,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 8),
        TextField(
          keyboardType: TextInputType.phone,
          controller: controller,
          decoration: InputDecoration(
              hintText: this.placeholder,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              filled: true,
              fillColor: const Color.fromRGBO(230, 230, 230, 1)),
          style:
              TextStyle(color: Color.fromRGBO(143, 139, 149, 1), fontSize: 12),
        )
      ],
    );
  }
}
