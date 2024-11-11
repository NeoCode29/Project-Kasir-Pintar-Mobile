import "package:flutter/material.dart";
import "package:kasir_pintar/pages/halamanForgotPassword.dart";
import "package:kasir_pintar/pages/halamanGantiProfile.dart";
import "package:kasir_pintar/pages/halamanPasswordBaru.dart";
import "package:kasir_pintar/pages/halamanRegister.dart";

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Poppins"),
      routes: {
        "halaman cover": (BuildContext context) => HalamanCover(),
        "halaman register": (context) => HalamanRegister(),
        "halaman ganti password": (context) => HalamanGantiProfile(),
        "halaman lupa password": (context) => HalamanForgotPassword(),
        "halaman password baru": (context) => HalamanNewPassword()
      },
      home: HalamanNewPassword(),
    );
  }
}

class HalamanCover extends StatelessWidget {
  HalamanCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Halaman Cover",
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
    );
  }
}
