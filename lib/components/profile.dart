import 'package:flutter/material.dart';
import 'package:kasir_pintar/components/button.dart';

class GantiProfile extends StatefulWidget {
  const GantiProfile({super.key});

  @override
  State<GantiProfile> createState() => _GantiProfileState();
}

class _GantiProfileState extends State<GantiProfile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child:
              Image.asset("assets/images/profile.png", width: 120, height: 120),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: CameraButton(handlePress: () {}),
        )
      ],
    );
  }
}
