import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts
import 'package:profil_universitas/screens/main_navigator.dart';
import 'package:profil_universitas/constants.dart'; // Import file constants

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UMSIDA | Universitas Muhammadiyah Sidoarjo',
      theme: ThemeData(
        // Terapkan warna primer
        primaryColor: kPrimaryBlue,
        colorScheme: ColorScheme.fromSeed(
          seedColor: kPrimaryBlue,
          primary: kPrimaryBlue,
          secondary: kAccentYellow,
        ),

        // Terapkan latar belakang
        scaffoldBackgroundColor: kSecondaryBlue,

        // Terapkan font baru
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: kDarkText),

        // Styling AppBar
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryBlue,
          foregroundColor: Colors.white, // Warna judul AppBar (putih)
          elevation: 4,
          titleTextStyle: TextStyle(
            fontFamily: 'Poppins', // Pastikan font konsisten
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Styling Bottom Navigation Bar
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: kPrimaryBlue, // Warna item aktif
          unselectedItemColor: Colors.grey[500], // Warna item non-aktif
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          type: BottomNavigationBarType.fixed, // Agar label selalu terlihat
        ),

        // Styling Card
        cardTheme: CardThemeData(
          elevation: 2,
          color: Colors.white, // Kartu selalu putih
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
      ),
      home: const MainNavigator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
