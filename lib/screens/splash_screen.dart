import 'package:aslab_travel/latihanmodul/pertemuan5.dart';
import 'package:aslab_travel/screens/homescreen.dart';
import 'package:aslab_travel/screens/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    // Menunda selama 3 detik sebelum berpindah ke halaman berikutnya
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF0F3F5),
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Lottie.network(
            'https://lottie.host/8d4a66f3-f26a-499b-9a5c-c6ae73b8ad35/P1CGdwbAw9.json',
            
            width: 350,
            height: 350,
          ),
          const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 450,
              ),
              Text(
                'REKOMENDASI',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1b1b1b),
                ),
              ),
              Text(
                'KULINER KHAS',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1b1b1b),
                ),
              ),
              Text(
                'CIANJUR',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1b1b1b),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
