import 'package:flutter/material.dart';
import 'package:kasir_pintar/components/button.dart';
import 'package:kasir_pintar/components/input.dart';
import 'package:kasir_pintar/components/link.dart';

class HalamanLogin extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  HalamanLogin({super.key});

  @override
  Widget build(BuildContext context) {
    // mengambil ukuran layar
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width - 40,
                    child: Text(
                      "Selamat datang kembali! Silakan masuk ke akun Anda dengan mengisi informasi di bawah ini. Jika Anda belum memiliki akun, silakan daftar untuk mendapatkan akses.",
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
              RegularInput(
                label: "username",
                controller: usernameController,
                placeholder: "insert username",
              ),
              const SizedBox(height: 8),
              PasswordInput(
                label: "password",
                controller: passwordController,
                placeholder: "insert password",
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Link(
                      handlePress: () {
                        Navigator.pushNamed(context, "halaman forgot password");
                      },
                      label: "lupa password ?")
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              RegulerButton(
                  handlePress: () {
                    Navigator.pushNamed(context, 'halaman dashboard');
                  },
                  label: "login"),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("belum punya akun ? "),
                  Link(
                      handlePress: () {
                        Navigator.pushNamed(context, "halaman register");
                      },
                      label: "register")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
