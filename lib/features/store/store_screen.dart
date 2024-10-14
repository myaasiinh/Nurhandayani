import 'package:flutter/material.dart';

import '../../data/store/dummy/plan_dummy.dart';
import 'widgets/card_plan_store.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Icon Button Notify
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                   // print('Notification Button Pressed');
                  },
                ),
                // Icon Button Profile
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {
                   // print('Profile Button Pressed');
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Text di dalam Column
            const Text(
              'Store 1',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // Row dengan dua IconButton sejajar di kanan
           
            // Card Widgets from dummy data
            Expanded(
              child: ListView.builder(
                itemCount: dummyStoreData.length,
                itemBuilder: (context, index) {
                  final item = dummyStoreData[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      height: 150, // Adjust card height as needed
                      child: CardWidget(
                        imageUrl: item.imageUrl,
                        text: item.text,
                        backgroundColor: item.color, // Panggil parameter warna dari model
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}