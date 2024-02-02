import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String _currentTime = '';

  @override
  void initState() {
    super.initState();
    _updateTime();

    Timer.periodic(const Duration(seconds: 1), (Timer timer) => _updateTime());
  }

  void _updateTime() {
    setState(() {
      _currentTime = _getCurrentTime();
    });
  }

  String _getCurrentTime() {
    DateTime now = DateTime.now();
    String formattedTime =
        "${_formatTimeComponent(now.hour)}:${_formatTimeComponent(now.minute)}:${_formatTimeComponent(now.second)}";
    return formattedTime;
  }

  String _formatTimeComponent(int timeComponent) {
    return timeComponent < 10 ? '0$timeComponent' : '$timeComponent';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 125,
                ),
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
                      child: Text(
                        _currentTime ?? "Loading...",
                        style: const TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Center(
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
                              "Pencurian",
                              style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Image.asset(
                            "assets/image/pencurian.png",
                            width: 100,
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
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
                            "kebakaran",
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/image/kebakaran1.png",
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 336,
                    height: 121,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 110, 163, 227),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 110, 163, 227),
                        width: 2.0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Banjir",
                            style: TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/image/banjir.png",
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ],
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
