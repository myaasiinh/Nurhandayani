import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_app_name/features/welcome/welcome_screen.dart';
import 'package:your_app_name/features/main/main_menu_screen.dart'; // Ganti dengan path yang sesuai

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Your App Name',
      theme: ThemeData(
        primarySwatch: Colors.red, // Ganti dengan warna utama aplikasi
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/welcome', // Rute awal aplikasi
      getPages: [
        GetPage(name: '/welcome', page: () => WelcomeScreen()), // Rute ke welcome screen
        GetPage(name: '/main', page: () => MainMenuScreen()), // Rute ke main menu
        // Tambahkan rute lainnya sesuai kebutuhan aplikasi
      ],
      debugShowCheckedModeBanner: false, // Menyembunyikan banner debug
    );
  }
}
