import 'package:altect/screen/admin/utama/controllers/utama_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Utama extends GetView<UtamaController> {
  final UtamaController homeController = Get.put(UtamaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Halo ${controller.app.user().nama}!',
          style: GoogleFonts.poppins(
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            iconSize: 30,
            color: Colors.black,
            onPressed: () {
              Get.toNamed('/notifikasi');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 336,
                    height: 121,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Obx(() => Text(
                                controller.currentTime,
                                style: GoogleFonts.poppins(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              )),
                          Obx(() => Text(
                                controller.currentDate,
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Get.toNamed('/data_warga');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 336,
                        height: 121,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 126, 123, 123),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: const Color.fromARGB(255, 126, 123, 123),
                            width: 2.0,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Data Warga",
                                style: TextStyle(
                                  fontSize: 45,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Image.asset(
                              "images/pencurian.png",
                              width: 100,
                              height: 100,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/jadwal_ronda');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 336,
                      height: 121,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 236, 193, 130),
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: const Color.fromARGB(255, 236, 193, 130),
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Jadwal Ronda",
                              style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Image.asset(
                            "images/kebakaran.png",
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
