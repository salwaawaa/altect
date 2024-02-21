
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controllers/auth_controllers.dart';

class Registermin extends GetView<AuthminController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView(
          children: [
            SizedBox(height: 0),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Text(
                //   'NIK',
                //   style: GoogleFonts.poppins(
                //     // Apply Poppins font here
                //     fontSize: 14,
                //     fontWeight: FontWeight.normal,
                //     color: Colors.black,
                //   ),
                // ),
                // const SizedBox(height: 15),
                // Container(
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: const Color.fromRGBO(255, 255, 255, 1),
                //     border: Border.all(color: Colors.black45, width: 1.0),
                //   ),
                //   child: TextFormField(
                //     controller: controller.nik,
                //     style: GoogleFonts.poppins(
                //       // Apply Poppins font here
                //       fontSize: 14,
                //       color: Colors.black,
                //     ),
                //     decoration: InputDecoration(
                //       border: InputBorder.none,
                //       hintText: 'masukkan NIK',
                //       hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                //       prefixIcon: Icon(
                //         Icons.assignment_ind_outlined,
                //         size: 20,
                //         color: Colors.grey,
                //       ),
                //       contentPadding:
                //           EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                //     ),
                //   ),
                // )
              ],
            ),
            SizedBox(height: 0),
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
                const SizedBox(height: 15),
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
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'masukkan email',
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
            SizedBox(height: 0),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Nama',
                  style: GoogleFonts.poppins(
                    // Apply Poppins font here
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(color: Colors.black45, width: 1.0),
                  ),
                  child: TextFormField(
                    controller: controller.nama,
                    style: GoogleFonts.poppins(
                      // Apply Poppins font here
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'masukkan nama',
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.person_2_outlined,
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
              height: 15,
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
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(color: Colors.black45, width: 1.0),
              ),
              child: TextFormField(
                controller: controller.password,
                style: GoogleFonts.poppins(
                  // Apply Poppins font here
                  fontSize: 14,
                  color: Colors.black,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'masukkan password',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    size: 20,
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off_outlined,
                    size: 20,
                    color: Colors.grey,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 17),
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
                  backgroundColor: Color.fromARGB(255, 191, 49, 49),
                ),
                onPressed: () async {
                  await controller.signup();
                },
                child: Text(
                  'Daftar',
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
                  "Sudah punya akun ? ",
                  style: TextStyle(fontSize: 20),
                ),
                GestureDetector(
                  onTap: () {
                    Get.offNamed('/login_admin');
                  },
                  child: const Text("Masuk",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
