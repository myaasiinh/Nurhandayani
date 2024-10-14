import 'package:get/get.dart';

class MainMenuController extends GetxController {
  // Variable untuk menyimpan lokasi otomatis
  var currentLocation = "Detecting location...".obs;

  // Variable untuk menyimpan status menu
  var isMenuOpen = false.obs;

  // Variable untuk menyimpan status pencarian
  var isSearchActive = false.obs;

  // Fungsi untuk membuka atau menutup menu
  void toggleMenu() {
    isMenuOpen.value = !isMenuOpen.value;
  }

  // Fungsi untuk mengaktifkan atau menonaktifkan pencarian
  void toggleSearch() {
    isSearchActive.value = !isSearchActive.value;
  }

  // Fungsi untuk memperbarui lokasi
  void updateLocation(String newLocation) {
    currentLocation.value = newLocation;
  }

  // Fungsi untuk mendeteksi lokasi otomatis
  void detectLocation() {
    // Implementasi deteksi lokasi bisa menggunakan plugin geolokasi
    // Untuk contoh ini, kita set lokasi manual setelah delay
    Future.delayed(Duration(seconds: 2), () {
      updateLocation("Seoul, South Korea");
    });
  }

  @override
  void onInit() {
    super.onInit();
    // Mulai deteksi lokasi otomatis saat controller diinisialisasi
    detectLocation();
  }
}
