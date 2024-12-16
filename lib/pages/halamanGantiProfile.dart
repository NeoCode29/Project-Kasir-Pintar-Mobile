import 'package:flutter/material.dart';
import 'package:kasir_pintar/components/input.dart';
import 'package:kasir_pintar/components/profile.dart';

class HalamanGantiProfile extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController nohpController = TextEditingController();
  HalamanGantiProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Atur Profile",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 340,
                    child: Text(
                      "Lengkapi profile kalian disini",
                      textAlign: TextAlign.center,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [GantiProfile()],
              ),
              const SizedBox(
                height: 20,
              ),
              RegularInput(
                label: "username",
                controller: usernameController,
                placeholder: "insert username",
              ),
              const SizedBox(
                height: 12,
              ),
              NumberInput(
                label: "nomer handphone",
                controller: nohpController,
                placeholder: "+62 ",
              ),
              const SizedBox(
                height: 12,
              ),
              RegularInput(
                label: "alamat",
                controller: usernameController,
                placeholder: "insert address",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
