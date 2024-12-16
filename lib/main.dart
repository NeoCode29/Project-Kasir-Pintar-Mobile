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
  runApp(MyApp());
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
        "halaman cover": (BuildContext context) => HalamanCover(),
        "halaman login": (BuildContext context) => HalamanLogin(),
        "halaman register": (context) => HalamanRegister(),
        "halaman ganti password": (context) => HalamanGantiProfile(),
        "halaman forgot password": (context) => HalamanForgotPassword(),
        "halaman password baru": (context) => HalamanNewPassword(),
        "halaman verifikasi email": (context) => HalamanVerifikasiEmail(),
        "halaman dashboard" : (context) => HalamanDashboard(),
        "halaman product" : (context) => HalamanProduct(),
        "halaman transaksi" : (context) => HalamanTransaksi(),
        "halaman manajemen user" : (context) => HalamanManajemenUser(),
        "halaman pelanggan-suplier" : (context) => HalamanPelangganDanSuplier(),
        "halaman laporan" : (context) => HalamanLaporan(),
      },
      home: HalamanCover(),
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
            SizedBox(height: 24),
            Text(
              "Kasir Pintar",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Solusi Kasir Modern untuk Bisnis Anda",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "halaman login");
              },
              child: Padding(
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
