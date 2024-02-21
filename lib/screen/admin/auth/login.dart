import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/auth_controllers.dart';


class Loginmin extends GetView<AuthminController> {
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        key: formKey,
        padding: const EdgeInsets.all(30),
        child: ListView(children: [
          const SizedBox(
            height: 0,
          ),
          const Image(
            image: AssetImage('images/altect2.png'),
            fit: BoxFit.contain,
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Email',
                style: GoogleFonts.poppins(
                  // Apply Poppins font here
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(color: Colors.black45, width: 1.0),
                ),
                child: TextFormField(
                  controller: controller.email,
                  style: GoogleFonts.poppins(
                    // Apply Poppins font here
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukkan email',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 20,
                      color: Colors.grey,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Password',
            style: GoogleFonts.poppins(
              // Apply Poppins font here
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(255, 255, 255, 1),
              border: Border.all(color: Colors.black45, width: 1.0),
            ),
            child: TextFormField(
              controller: controller.password,
              obscureText: controller.obscureText.value,
              style: GoogleFonts.poppins(
                // Apply Poppins font here
                fontSize: 14,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Masukkan password',
                hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.lock_outlined,
                  size: 20,
                  color: Colors.grey,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                suffixIcon: GestureDetector(
                  onTap: () {
                    controller.obscureText.value =
                        !controller.obscureText.value;
                  },
                  child: Icon(
                    controller.obscureText.value ? Icons.visibility_off : Icons.visibility
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 191, 49, 49),
              ),
              onPressed: () async {
                await controller.login();
              },
              child: Text(
                'Masuk',
                style: GoogleFonts.poppins(
                  // Apply Poppins font here
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Belum punya akun ? ",
                style: TextStyle(fontSize: 20),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/register_admin');
                },
                child: const Text(
                  "Daftar",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
