import 'package:flutter/material.dart';
import 'top_live_events.dart';
import 'popular_events.dart';
import 'custom_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Row(
              children: [
                Icon(Icons.menu),
                Icon(Icons.search),
              ],
            ),
          ),
          TopLiveEvents(),
          PopularEvents(),
          Positioned(
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(icon: Icons.home, bgColor: Colors.black, onPressed: () {}),
                CustomButton(icon: Icons.search, bgColor: Colors.black, onPressed: () {}),
                CustomButton(icon: Icons.bookmark, bgColor: Colors.black, onPressed: () {}),
                CustomButton(icon: Icons.settings, bgColor: Colors.black, onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
