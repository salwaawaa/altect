import 'package:altect/screen/warga/submit_pencurian/controllers/submit_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SubPen extends GetView<SubPenController> {
  final SubPenController controller = Get.put(SubPenController());
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
                    "Info Pencurian",
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
                GetBuilder<SubPenController>(builder: (controller) {
                  return ListView.builder(
                      itemCount: controller.pencurian.length,
                      itemBuilder: (context, index) {
                        return Center(
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(children: [
                                  Column(
                                    children: [
                                      Card(
                                        child: Container(
                                          width: double.infinity,
                                          height: 160,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Image.network(
                                            "https://jypdmywxczkrwprbnolv.supabase.co/storage/v1/object/public/${controller.pencurian[index]['photo']}",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  // Column(
                                  //   children: [
                                  //     Text(
                                  //       controller.pencurian[index]
                                  //           ['locationId'],
                                  //       style: TextStyle(
                                  //           fontSize: 20,
                                  //           fontWeight: FontWeight.w400),
                                  //     ),
                                  //     SizedBox(
                                  //       height: 5,
                                  //     ),
                                  //   ],
                                  // ),
                                ])));
                      });
                })
              ],
            ),
          ),
        )));

    // SizedBox(
    //   height: 15,
    // ),
    // Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: [
    //     Text(
    //       'Lokasi',
    //       style: GoogleFonts.poppins(
    //         fontSize: 14,
    //         fontWeight: FontWeight.normal,
    //         color: Colors.grey,
    //       ),
    //     ),
    //     SizedBox(
    //       height: 5,
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.all(8.0),
    //       child: Container(
    //         width: 350,
    //         height: 65,
    //         decoration: BoxDecoration(
    //           color: Color.fromARGB(255, 194, 23, 23),
    //           borderRadius: BorderRadius.circular(15.0),
    //           border: Border.all(
    //             color: Color.fromARGB(255, 194, 23, 23),
    //             width: 1.0,
    //           ),
    //         ),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             IconButton(
    //               onPressed: () {},
    //               icon: Icon(
    //                 Icons.location_on_outlined,
    //                 size: 30,
    //                 color: Colors.white,
    //               ),
    //             ),
    //             Expanded(
    //               child: Padding(
    //                 padding: const EdgeInsets.all(20.0),
    //                 child: Text(
    //                   "Lokasi Saya",
    //                   style: GoogleFonts.poppins(
    //                       fontSize: 18, color: Colors.white),
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
  }
}
