// Import package yang dibutuhkan
import 'package:flutter/material.dart';
import 'package:kasir_pintar/components/button.dart';
import 'package:kasir_pintar/components/input.dart';
import 'halamanPasswordBaru.dart';

// Halaman untuk reset password
class HalamanForgotPassword extends StatelessWidget {
  // Controller untuk input email
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // App bar dengan judul
      appBar: AppBar(
        title: Text(
          "Lupa Password",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      // Body dengan padding horizontal
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 8),
            // Teks instruksi untuk user
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
            // Input field untuk email
            RegularInput(
              label: "Email",
              controller: emailController,
              placeholder: "insert email",
            ),
            SizedBox(height: 12),
            // Tombol untuk lanjut ke halaman verifikasi
            RegulerButton(
                handlePress: () {
                  Navigator.pushNamed(context, "halaman verifikasi email");
                },
                label: "next"),
          ],
        ),
      ),
    );
  }
}
