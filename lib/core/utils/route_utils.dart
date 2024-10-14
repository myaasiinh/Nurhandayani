import 'package:flutter/material.dart';

class RouteUtils {
  // Fungsi untuk pindah ke halaman baru tanpa menghapus halaman sebelumnya
  static void push(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Fungsi untuk mengganti halaman (menghapus halaman sebelumnya)
  static void pushReplacement(BuildContext context, Widget page) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => page),
    );
  }

  // Fungsi untuk mengganti semua halaman dengan halaman baru (hapus semua history)
  static void pushAndRemoveUntil(BuildContext context, Widget page) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => page),
      (route) => false, // Menghapus semua halaman sebelumnya
    );
  }

  // Fungsi untuk kembali ke halaman sebelumnya
  static void pop(BuildContext context) {
    Navigator.of(context).pop();
  }

  // Fungsi untuk kembali ke halaman tertentu berdasarkan kondisi
  static void popUntil(BuildContext context, String routeName) {
    Navigator.of(context).popUntil(ModalRoute.withName(routeName));
  }

  // Fungsi untuk navigasi dengan named routes (misalnya '/home')
  static void pushNamed(BuildContext context, String routeName, {Object? arguments}) {
    Navigator.of(context).pushNamed(routeName, arguments: arguments);
  }

  // Fungsi untuk mengganti halaman dengan named routes (menghapus halaman sebelumnya)
  static void pushReplacementNamed(BuildContext context, String routeName, {Object? arguments}) {
    Navigator.of(context).pushReplacementNamed(routeName, arguments: arguments);
  }

  // Fungsi untuk mengganti semua halaman dengan named route (hapus semua history)
  static void pushNamedAndRemoveUntil(BuildContext context, String routeName) {
    Navigator.of(context).pushNamedAndRemoveUntil(routeName, (route) => false);
  }
}
