// Import package yang dibutuhkan
import 'package:flutter/material.dart';
import 'package:kasir_pintar/components/button.dart';
import 'package:kasir_pintar/components/input.dart';
import 'package:kasir_pintar/components/link.dart';

// Widget halaman register
class HalamanRegister extends StatelessWidget {
  // Controller untuk input form
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPassController = TextEditingController();
  HalamanRegister({super.key});

  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    final size = MediaQuery.of(context).size;
    // Membuat tampilan utama dengan Scaffold
    return Scaffold(
        // App bar untuk judul halaman
        appBar: AppBar(
          // Menonaktifkan tombol back default
          automaticallyImplyLeading: false,
          // Judul halaman register
          title: Text(
            "Register",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            textAlign: TextAlign.center,
          ),
          // Posisi judul di tengah
          centerTitle: true,
        ),
        // Body dengan scroll view
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 20,
                ),
                // Teks deskripsi halaman register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "Buat akun baru untuk mendapatkan akses penuh ke fitur kami. Lengkapi informasi di bawah ini untuk mendaftar dan mulai pengalaman Anda bersama kami.",
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
                  height: 20,
                ),
                // Input username
                RegularInput(
                  label: "username",
                  controller: usernameController,
                  placeholder: "insert username",
                ),
                SizedBox(
                  height: 8,
                ),
                // Input email
                RegularInput(
                  label: "email",
                  controller: emailController,
                  placeholder: "insert email",
                ),
                SizedBox(height: 8),
                // Input password
                PasswordInput(
                  label: "password",
                  controller: passwordController,
                  placeholder: "insert password",
                ),
                SizedBox(height: 8),
                // Input konfirmasi password
                PasswordInput(
                    label: "repeat password",
                    controller: repeatPassController,
                    placeholder: "insert repeat password"),
                SizedBox(
                  height: 24,
                ),
                // Tombol register
                RegulerButton(
                  handlePress: () {
                    Navigator.pushNamed(context, "halaman verifikasi email");
                  }, 
                  label: "register"
                ),
                SizedBox(
                  height: 24,
                ),
                // Link ke halaman login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("sudah punya akun ?"),
                    Link(
                        handlePress: () {
                          Navigator.pop(context);
                        },
                        label: "login")
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
