import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  // Indeks dari slide yang aktif
  var currentIndex = 0.obs;

  // Fungsi untuk mengubah indeks slide
  void changeSlide(int index) {
    currentIndex(index);
  }

  // Fungsi untuk melanjutkan ke layar utama
  void navigateToMainScreen() {
    // Navigasi ke layar utama
    Get.offAllNamed('/main'); // Ubah '/main' sesuai dengan rute yang diinginkan
  }

  // Fungsi untuk melanjutkan ke slide berikutnya
  void nextSlide() {
    if (currentIndex.value < 2) { // Asumsi ada 3 slide (indeks 0, 1, 2)
      currentIndex++;
    } else {
      navigateToMainScreen(); // Jika sudah di slide terakhir, navigasi ke main screen
    }
  }

  // Fungsi untuk kembali ke slide sebelumnya
  void previousSlide() {
    if (currentIndex.value > 0) {
      currentIndex--;
    }
  }
}
