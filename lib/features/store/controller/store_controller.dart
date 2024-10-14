import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_app_name/data/model_responses/plan_model_responses.dart'; // Model response untuk store

class StoreController extends GetxController {
  // List yang menyimpan data event yang tersedia di store
  var availableEvents = <PlanModelResponse>[].obs;

  // Variabel untuk menyimpan status loading
  var isLoading = false.obs;

  // Variabel untuk menyimpan event yang dipilih user
  var selectedEvent = PlanModelResponse().obs;

  @override
  void onInit() {
    super.onInit();
    // Inisialisasi data atau memanggil fungsi yang memuat data saat controller dibuat
    loadAvailableEvents();
  }

  // Fungsi untuk memuat data event yang tersedia di store
  void loadAvailableEvents() async {
    try {
      isLoading(true);  // Menampilkan loading state

      // Simulasikan pengambilan data (data bisa diambil dari API atau lokal)
      await Future.delayed(Duration(seconds: 2));  // Contoh delay, ganti dengan API call

      // Contoh data dummy yang ditambahkan ke list
      availableEvents.addAll([
        PlanModelResponse(
          eventName: "BTS Concert",
          eventDate: DateTime(2024, 10, 15),
          eventDescription: "The biggest BTS concert in Asia!",
          ticketPrice: 1388.68,
        ),
        PlanModelResponse(
          eventName: "Taylor Swift Live",
          eventDate: DateTime(2024, 11, 3),
          eventDescription: "The iconic Taylor Swift tour!",
          ticketPrice: 1200.00,
        ),
      ]);
    } catch (e) {
      // Handle error (misalnya: tampilkan pesan kesalahan)
      Get.snackbar("Error", "Failed to load events");
    } finally {
      isLoading(false);  // Hentikan loading state
    }
  }

  // Fungsi untuk memilih event yang akan di-book
  void selectEvent(PlanModelResponse event) {
    selectedEvent(event);  // Simpan event yang dipilih
  }

  // Fungsi untuk melakukan booking event
  void bookSelectedEvent() {
    if (selectedEvent.value.eventName != null) {
      // Logika booking event (misalnya: panggil API booking)
      Get.snackbar("Success", "Successfully booked ${selectedEvent.value.eventName}");
    } else {
      Get.snackbar("Error", "No event selected");
    }
  }
}
