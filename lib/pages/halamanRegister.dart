// Import package yang dibutuhkan
import 'package:flutter/material.dart';

import 'package:http/http.dart';
import 'dart:convert';
import 'package:kasir_pintar/components/button.dart';
import 'package:kasir_pintar/components/input.dart';
import 'package:kasir_pintar/components/link.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Widget halaman register
class HalamanRegister extends StatelessWidget {
  // Controller untuk input form
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPassController = TextEditingController();
  HalamanRegister({super.key});

  Future<void> registerUser(context) async {
    final url = Uri.parse("http://127.0.0.1:8000/api/register");
    final headers = {
      'Content-Type': 'application/json',
    };
    final body = {
      'name': usernameController.text,
      'email': emailController.text,
      'password': passwordController.text,
      'password_confirmation': repeatPassController.text,
    };

    try {
      final response =
          await post(url, headers: headers, body: jsonEncode(body));

      if (response.statusCode == 200) {
        // Berhasil mendaftar, tampilkan pesan sukses atau navigasi ke halaman lain.
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Berhasil mendaftar'),
            backgroundColor: Colors.green,
          ),
        );
        // Simpan token dan id dari response ke shared_pref
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('token', jsonDecode(response.body)['access_token']);
        final userId = jsonDecode(response.body)['data']["id"];
        prefs.setInt('userId', userId);

        Navigator.of(context).pushNamed('halaman login');
      } else {
        // Gagal mendaftar, tampilkan pesan error.
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Gagal mendaftar: ${response.body}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      print('Error: $e');
    }
  }

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
          title: const Text(
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 20,
                ),
                // Teks deskripsi halaman register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width - 40,
                      child: Text(
                        "Buat akun baru untuk mendapatkan akses penuh ke fitur kami. Lengkapi informasi di bawah ini untuk mendaftar dan mulai pengalaman Anda bersama kami.",
                        textAlign: TextAlign.center,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Input username
                RegularInput(
                  label: "username",
                  controller: usernameController,
                  placeholder: "insert username",
                ),
                const SizedBox(
                  height: 8,
                ),
                // Input email
                RegularInput(
                  label: "email",
                  controller: emailController,
                  placeholder: "insert email",
                ),
                const SizedBox(height: 8),
                // Input password
                PasswordInput(
                  label: "password",
                  controller: passwordController,
                  placeholder: "insert password",
                ),
                const SizedBox(height: 8),
                // Input konfirmasi password
                PasswordInput(
                    label: "repeat password",
                    controller: repeatPassController,
                    placeholder: "insert repeat password"),
                const SizedBox(
                  height: 24,
                ),
                // Tombol register
                RegulerButton(
                    handlePress: () {
                      print("hello world");
                      registerUser(context);
                    },
                    label: "register"),
                const SizedBox(
                  height: 24,
                ),
                // Link ke halaman login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("sudah punya akun ?"),
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
