import 'package:flutter/material.dart';
import 'package:profil_universitas/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profil_universitas/screens/agenda_screen.dart';

// Kembali menjadi StatelessWidget yang sederhana
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo-umsida.png', // <-- Ganti dengan path gambar logo Anda
          height: 40, // Atur tinggi logo sesuai keinginan
          // fit: BoxFit.contain, // Opsional: Pastikan logo terlihat penuh
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. BAGIAN "HERO"
            _buildHeroSection(), // Ini widget yang kita modifikasi
            // 2. BAGIAN "MENU GRID"
            _buildMainMenuGrid(context),

            // 3. BAGIAN "TENTANG KAMI"
            _buildAboutCard(),
          ],
        ),
      ),
    );
  }

  // MODIFIKASI WIDGET HERO SECTION
  Widget _buildHeroSection() {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryBlue, // Warna latar belakang jika gambar error
        // --- INI BAGIAN UTAMA YANG DIUBAH ---
        image: DecorationImage(
          // Ganti 'hero_image.jpg' dengan nama file Anda
          image: AssetImage('assets/images/hero_image.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
      // Overlay Gradient (agar teks tetap terbaca)
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.6), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        // Teks di atas gambar (tidak berubah)
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang di',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
              ),
              Text(
                'Universitas Muhammadiyah Sidoarjo',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // (Widget _buildMainMenuGrid dan _buildAboutCard SAMA SEPERTI SEBELUMNYA)
  // ... (salin sisa kode dari versi video)

  // Widget private untuk Grid Menu
  Widget _buildMainMenuGrid(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _buildMenuCard(
            context,
            icon: Icons.school,
            label: 'Fakultas',
            onTap: () {},
          ),
          _buildMenuCard(
            context,
            icon: Icons.article,
            label: 'Visi & Misi',
            onTap: () {},
          ),
          _buildMenuCard(
            context,
            icon: Icons.calendar_today,
            label: 'Agenda',
            onTap: () {},
          ),
          _buildMenuCard(
            context,
            icon: Icons.contacts,
            label: 'Kontak',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  // Template untuk setiap kartu menu di Grid
  Widget _buildMenuCard(
    BuildContext context, {
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 3,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, size: 48, color: kPrimaryBlue),
              const SizedBox(height: 12),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: kDarkText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Card "Tentang Kami" yang lama
  Widget _buildAboutCard() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Ini adalah aplikasi resmi informasi kampus Universitas Keren. '
            'Telusuri informasi lengkap kami melalui menu-menu yang tersedia.',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 15, height: 1.5),
          ),
        ),
      ),
    );
  }
}
