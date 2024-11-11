import 'package:flutter/material.dart';
import 'package:kasir_pintar/components/button.dart';
import 'package:kasir_pintar/components/input.dart';
import 'package:kasir_pintar/components/link.dart';

class HalamanRegister extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPassController = TextEditingController();
  HalamanRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Register",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Buat akun baru untuk mendapatkan akses penuh ke fitur kami. Lengkapi informasi di bawah ini untuk mendaftar dan mulai pengalaman Anda bersama kami.",
                    textAlign: TextAlign.center,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 10),
                  ),
                  width: 340,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            RegularInput(
              label: "username",
              controller: usernameController,
              placeholder: "insert username",
            ),
            SizedBox(
              height: 8,
            ),
            RegularInput(
              label: "email",
              controller: emailController,
              placeholder: "insert email",
            ),
            SizedBox(height: 8),
            PasswordInput(
              label: "password",
              controller: passwordController,
              placeholder: "insert password",
            ),
            SizedBox(height: 8),
            PasswordInput(
                label: "repeat password",
                controller: repeatPassController,
                placeholder: "insert repeat password"),
            SizedBox(
              height: 24,
            ),
            RegulerButton(handlePress: () {}, label: "register"),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("sudah punya akun  ?"),
                Link(handlePress: () {}, label: "login")
              ],
            )
          ],
        ),
      ),
    );
  }
}
