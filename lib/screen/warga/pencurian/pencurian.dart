import 'package:altect/screen/warga/pencurian/controllers/pencurian_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';

class Pencurian extends GetView<PencurianController> {
  final PencurianController controller = Get.put(PencurianController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Get.offNamed('/bar');
                },
                icon: Icon(Icons.arrow_back)),
            Expanded(
              child: Center(
                child: Text(
                  "Pencurian",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment
                  .center, // Mengatur posisi elemen di tengah secara horizontal
              children: [
                SizedBox(height: 0),
                GetBuilder<PencurianController>(builder: (_) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(15),
                            strokeWidth: 1,
                            color: Colors.black,
                            child: Container(
                              width: 350,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(15.0),
                                image: controller.image == null
                                    ? null
                                    : DecorationImage(
                                        image: FileImage(controller.image!)),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                onPressed: () async {
                                  await controller.selectImage();
                                  await controller.uploadImage();
                                },
                                icon: Icon(Icons.add_a_photo),
                                iconSize: 50,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lokasi',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Container(
                    //     width: 350,
                    //     height: 65,
                    //     decoration: BoxDecoration(
                    //       color: Color.fromARGB(255, 194, 23, 23),
                    //       borderRadius: BorderRadius.circular(15.0),
                    //       border: Border.all(
                    //         color: Color.fromARGB(255, 194, 23, 23),
                    //         width: 1.0,
                    //       ),
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment
                    //           .center,
                    //       children: [
                    //         IconButton(
                    //           onPressed: () {},
                    //           icon: Icon(
                    //             Icons.location_on_outlined,
                    //             size: 30,
                    //             color: Colors.white,
                    //           ),
                    //         ),
                    //         Expanded(
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(20.0),
                    //             child: Text(
                    //               "Lokasi Saya",
                    //               style: GoogleFonts.poppins(
                    //                   fontSize: 18, color: Colors.white),
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Obx(() => Container(
                            width: 350,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 194, 23, 23),
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                color: Color.fromARGB(255, 194, 23, 23),
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.location_on_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        10), // Tambahkan SizedBox agar ada ruang antara IconButton dan DropdownButton
                                Expanded(
                                  child: DropdownButton<String>(
                                    value: controller.selectedItem.value,
                                    onChanged: (String? newValue) {
                                      controller.selectedItem.value = newValue!;
                                    },
                                    items: controller.items.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),

                    // SizedBox(
                    //   height: 15,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Container(
                    //     width: 350,
                    //     height: 65,
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(15.0),
                    //       border: Border.all(
                    //         color: Colors.black,
                    //         width: 1.0,
                    //       ),
                    //     ),
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment
                    //           .center, // Mengatur posisi elemen di tengah secara horizontal
                    //       children: [
                    //         IconButton(
                    //           onPressed: () {},
                    //           icon: Icon(
                    //             Icons.search,
                    //             size: 30,
                    //             color: Colors.black,
                    //           ),
                    //         ),
                    //         Expanded(
                    //           child: Padding(
                    //             padding: const EdgeInsets.all(20.0),
                    //             child: Text(
                    //               "Cari Lokasi",
                    //               style: GoogleFonts.poppins(
                    //                   fontSize: 18, color: Colors.black),
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
        child: ElevatedButton(
          onPressed: () async {
            print("loding");
            await controller.add();
            await controller.showNotification();
          },
          style: ElevatedButton.styleFrom(
            primary:
                Color.fromARGB(255, 194, 23, 23), // Warna latar belakang tombol
            textStyle: TextStyle(fontSize: 16), // Gaya teks dalam tombol
            padding: EdgeInsets.symmetric(
                horizontal: 20, vertical: 12), // Padding di dalam tombol
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Bentuk sudut tombol
            ),
          ),
          child: Text(
            'Submit',
            style: GoogleFonts.poppins(
              color: Colors.white, // Warna teks
              fontWeight: FontWeight.bold, // Ketebalan teks
            ),
          ),
        ),
      ),
    );
  }
}
