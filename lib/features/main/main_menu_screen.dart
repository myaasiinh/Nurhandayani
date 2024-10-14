import 'package:flutter/material.dart';
import 'package:your_app_name/core/constants/color.dart';  // Pastikan untuk mendefinisikan warna yang digunakan
import 'package:your_app_name/core/constants/images.dart'; // Pastikan untuk mendefinisikan gambar yang digunakan
import 'package:your_app_name/features/main/widgets/home/home_screen.dart';  // Contoh halaman yang akan dituju

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gambar full layar
          Positioned.fill(
            child: Image.asset(
              Images.mainBackground,  // Gambar background full screen
              fit: BoxFit.cover,
            ),
          ),

          // Teks overlay di atas gambar
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text1 berwarna merah
                  Text(
                    'EventPulse',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: AppColors.red, // Warna merah
                    ),
                  ),

                  // Text2 berwarna putih
                  Text(
                    'Music Events, Curated for Your World',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.white, // Warna putih
                    ),
                  ),

                  SizedBox(height: 20), // Spasi antara text3 dan text lainnya

                  // Text3 berwarna putih
                  Text(
                    'Explore top live events around the world',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.white, // Warna putih
                    ),
                  ),

                  SizedBox(height: 10), // Spasi antara text3 dan text4

                  // Text4 berwarna merah dan Text5 berwarna putih
                  Row(
                    children: [
                      Text(
                        'Discover',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.red, // Warna merah
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'new and exciting events',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.white, // Warna putih
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  // Text6 berwarna putih
                  Text(
                    'Tailored for your musical taste and location.',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.white, // Warna putih
                    ),
                  ),

                  SizedBox(height: 10),

                  // Text7 berwarna putih dan Text8 berwarna merah
                  Row(
                    children: [
                      Text(
                        'Join the fun,',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.white, // Warna putih
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Book Now!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.red, // Warna merah
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Lingkaran putih dengan ikon panah di pojok kanan bawah
          Positioned(
            bottom: 30,
            right: 30,
            child: GestureDetector(
              onTap: () {
                // Navigasi ke home screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(), // Ganti dengan halaman tujuan
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.arrow_forward, // Ikon panah
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
