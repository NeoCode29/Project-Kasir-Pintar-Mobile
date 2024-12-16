import "package:flutter/material.dart";
import "package:kasir_pintar/pages/halamanForgotPassword.dart";
import "package:kasir_pintar/pages/halamanGantiProfile.dart";
import "package:kasir_pintar/pages/halamanLogin.dart";
import "package:kasir_pintar/pages/halamanPasswordBaru.dart";
import "package:kasir_pintar/pages/halamanRegister.dart";
import "package:kasir_pintar/pages/halamanVerifikasiEmail.dart";
import "package:kasir_pintar/pages/halamanDashboard.dart";
import "package:kasir_pintar/pages/halamanProduct.dart";
import "package:kasir_pintar/pages/halamanTransaksi.dart";
import "package:kasir_pintar/pages/halamanManajemenUser.dart";
import "package:kasir_pintar/pages/halamanPelangganDanSuplier.dart";
import "package:kasir_pintar/pages/halamanLaporan.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
      ),
      routes: {
        "halaman cover": (BuildContext context) => const HalamanCover(),
        "halaman login": (BuildContext context) => HalamanLogin(),
        "halaman register": (context) => HalamanRegister(),
        "halaman ganti password": (context) => HalamanGantiProfile(),
        "halaman forgot password": (context) => HalamanForgotPassword(),
        "halaman password baru": (context) => HalamanNewPassword(),
        "halaman verifikasi email": (context) => HalamanVerifikasiEmail(),
        "halaman dashboard": (context) => const HalamanDashboard(),
        "halaman product": (context) => const HalamanProduct(),
        "halaman transaksi": (context) => const HalamanTransaksi(),
        "halaman manajemen user": (context) => const HalamanManajemenUser(),
        "halaman pelanggan-suplier": (context) =>
            const HalamanPelangganDanSuplier(),
        "halaman laporan": (context) => const HalamanLaporan(),
      },
      home: const HalamanCover(),
    );
  }
}

class HalamanCover extends StatelessWidget {
  const HalamanCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/cash-machine.png',
              height: 120,
            ),
            const SizedBox(height: 24),
            const Text(
              "Kasir Pintar",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Solusi Kasir Modern untuk Bisnis Anda",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "halaman login");
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                child: Text(
                  "Mulai",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
