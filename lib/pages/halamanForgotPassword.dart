import 'package:flutter/material.dart';
import 'package:kasir_pintar/components/button.dart';
import 'package:kasir_pintar/components/input.dart';
import 'halamanPasswordBaru.dart';

class HalamanForgotPassword extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lupa Password",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Masukkan email untuk mendapatkan kode verifikasi",
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12),
                  ),
                  width: size.width - 40,
                )
              ],
            ),
            RegularInput(
              label: "",
              controller: emailController,
              placeholder: "insert email",
            ),
            SizedBox(height: 12),
            RegulerButton(handlePress: () {}, label: "next"),
          ],
        ),
      ),
    );
  }
}
