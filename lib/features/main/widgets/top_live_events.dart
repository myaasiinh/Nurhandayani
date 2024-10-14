import 'package:flutter/material.dart';

class TopLiveEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Top Live Events", style: TextStyle(color: Colors.white)),
            Text("View", style: TextStyle(color: Colors.grey)),
          ],
        ),
        // Example event circles
        Row(
          children: [
            CircleAvatar(backgroundColor: Colors.red),
            CircleAvatar(backgroundColor: Colors.grey),
          ],
        ),
      ],
    );
  }
}
