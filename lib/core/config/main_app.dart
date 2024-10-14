import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../constants/color.dart'; // Import warna dari file constants
import '../../features/main/widgets/home/home_screen.dart'; // Import screen utama
import '../../features/main/controller/main_menu_controller.dart'; // Controller lokasi

void main() {
  // Lock orientation to portrait mode (optional)
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MainApp());
  });
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provide MainMenuController for location management
        ChangeNotifierProvider(create: (_) => MainMenuController()),
      ],
      child: MaterialApp(
        title: 'EventPulse',
        debugShowCheckedModeBanner: false, // Remove debug banner
        theme: _buildAppTheme(),
        home: HomeScreen(), // Set the home screen
        routes: _buildAppRoutes(), // Define application routes
      ),
    );
  }

  // Function to build application theme
  ThemeData _buildAppTheme() {
    return ThemeData(
      primaryColor: AppColors.red, // Use primary color from color.dart
      scaffoldBackgroundColor: AppColors.black, // Background color
      visualDensity: VisualDensity.adaptivePlatformDensity,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.black, // AppBar background color
        elevation: 0, // Remove shadow
        iconTheme: IconThemeData(color: AppColors.white), // Icon color
        titleTextStyle: TextStyle(color: AppColors.white, fontSize: 20),
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(color: AppColors.white),
        bodyText2: TextStyle(color: AppColors.white),
        headline1: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  // Function to define application routes
  Map<String, WidgetBuilder> _buildAppRoutes() {
    return {
      '/home': (context) => HomeScreen(),
      // Add more routes here as needed
    };
  }
}
