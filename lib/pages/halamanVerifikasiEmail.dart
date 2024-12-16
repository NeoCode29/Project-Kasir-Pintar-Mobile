// Import package yang dibutuhkan
import 'package:flutter/material.dart';
import 'package:kasir_pintar/components/button.dart';

// Halaman untuk verifikasi email
class HalamanVerifikasiEmail extends StatelessWidget {
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
          "Verifikasi Email",
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
                    "Kami membutuhkan Anda untuk memverifikasi alamat email Anda sebelum melanjutkan. Mohon cek email Anda dan ikuti petunjuk untuk menyelesaikan proses verifikasi.",
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12),
                  ),
                  width: size.width - 40,
                )
              ],
            ),
            SizedBox(height: 18),
            // Gambar ilustrasi email
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/images/email.png", width: 160)],
            ),
            SizedBox(
              height: 18,
            ),
            // Teks belum menerima email
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Belum menerima email",
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12),
                  ),
                  width: size.width - 40,
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            // Tombol untuk kirim ulang email verifikasi
            OutlineButton(handlePress: () {}, label: "kirim ulang")
          ],
        ),
      ),
    );
  }
}
