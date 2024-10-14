import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String imageUrl;
  final String text;
  final Color backgroundColor;

  const CardWidget({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.backgroundColor, // Tambahkan backgroundColor sebagai parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Container(
          decoration: BoxDecoration(
            color: backgroundColor, // Panggil backgroundColor dari parameter
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Text at bottom left
        Positioned(
          bottom: 10,
          left: 10,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.black54, // Background untuk teks
            ),
          ),
        ),
      ],
    );
  }
}