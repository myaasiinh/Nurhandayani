import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_app_name/features/welcome/controller/welcome_controller.dart';

class WelcomeScreen extends StatelessWidget {
  final WelcomeController welcomeController = Get.put(WelcomeController()); // Inisialisasi controller

  final List<String> slides = [
    "Welcome to our App!",
    "Discover Amazing Events",
    "Join Us Now!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: welcomeController.changeSlide,
              itemCount: slides.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Text(
                    slides[index],
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return TextButton(
                  onPressed: welcomeController.currentIndex.value > 0
                      ? welcomeController.previousSlide
                      : null, // Disable button if on first slide
                  child: Text("Back"),
                );
              }),
              Obx(() {
                return TextButton(
                  onPressed: welcomeController.nextSlide,
                  child: Text(
                    welcomeController.currentIndex.value < slides.length - 1
                        ? "Next"
                        : "Get Started",
                  ),
                );
              }),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
