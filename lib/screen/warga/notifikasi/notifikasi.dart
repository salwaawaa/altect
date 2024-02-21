import 'package:altect/screen/warga/notifikasi/controllers/notifikasi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifikasi extends GetView<NotifikasiController> {
  final NotifikasiController notifikasiController =
      Get.put(NotifikasiController());

  final List<Map<String, dynamic>> notifications = [
    {
      'username': 'user1',
      'message': 'kebakaran',
      'time': '2 menit yang lalu',
      'avatar': 'assets/avatar2.png',
      'image': 'images/kebakaran.png',
      'location': 'Jl. Jalan No. 123',
    },
    {
      'username': 'user2',
      'message': 'Pencurian',
      'time': 'Kemarin',
      'avatar': 'assets/avatar2.jpg',
      'image': 'images/pencurian.png',
      'location': 'Jl. Jalan No. 456',
    },
    // Add more notifications as needed
  ];

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
                  "Notifikasi",
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
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(notifications[index]['avatar']),
            ),
            title: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: notifications[index]['username'],
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' ${notifications[index]['message']}',
                    style: GoogleFonts.poppins(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                Text(
                  notifications[index]['time'],
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            onTap: () {
              _showNotificationDetail(context, notifications[index]);
            },
          );
        },
      ),
    );
  }

  void _showNotificationDetail(
      BuildContext context, Map<String, dynamic> notification) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  notification['image'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 250,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${notification['message']}',
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.normal),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Lokasi: ${notification['location']}',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '${notification['time']}',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Container(
                    width: 70, // Atur lebar sesuai kebutuhan Anda
                    height: 40, // Atur tinggi sesuai kebutuhan Anda
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(255, 191, 49, 49),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Atur sudut melengkung
                      ),
                      child: Text(
                        'Close',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}
