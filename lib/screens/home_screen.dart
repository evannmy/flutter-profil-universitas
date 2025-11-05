import 'package:flutter/material.dart';
import 'package:profil_universitas/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profil_universitas/screens/agenda_screen.dart';

// Kembali menjadi StatelessWidget yang sederhana
class HomeScreen extends StatelessWidget {
  final Function(int) onNavigate;

  // 2. Tambahkan 'onNavigate' ke constructor
  const HomeScreen({super.key, required this.onNavigate});

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
            // 2. BAGIAN "TENTANG KAMI"
            _buildAboutCard(),
            // 3. BAGIAN "MENU GRID"
            _buildMainMenuGrid(context),
            _buildRecognitionSection(),
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
          image: AssetImage('assets/images/hero-image-2.png'),
          fit: BoxFit.cover,
        ),
      ),
      // Overlay Gradient (agar teks tetap terbaca)
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(
                0,
                0,
                0,
                0.6,
              ), // R:0, G:0, B:0 (Hitam), Opacity: 0.6
              Colors.transparent,
            ],
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
    // 1. Bungkus lagi dengan LayoutBuilder
    return LayoutBuilder(
      builder: (context, constraints) {
        // 2. Tentukan nilai dinamis
        final double padding;
        final double spacing;
        final int crossAxisCount; // <-- VARIABEL KUNCI KITA

        if (constraints.maxWidth > 800) {
          // A. Jika layar SANGAT LEBAR (Desktop)
          padding = 32.0; // Padding terluar besar
          spacing = 32.0; // Jarak antar kotak besar
          crossAxisCount = 4; // <-- Tampilkan 4 KOLOM
        } else if (constraints.maxWidth > 600) {
          // B. Jika layar LEBAR (Tablet)
          padding = 24.0;
          spacing = 24.0;
          crossAxisCount = 4; // <-- Tampilkan 4 KOLOM juga
        } else {
          // C. Jika layar KECIL (Mobile)
          padding = 16.0;
          spacing = 16.0;
          crossAxisCount = 2; // <-- Tampilkan 2 KOLOM
        }

        // 3. KITA HAPUS 'Center' dan 'ConstrainedBox'
        //    Kita ingin grid ini mengisi layar
        return Container(
          padding: EdgeInsets.all(padding), // <-- Gunakan padding dinamis
          child: GridView.count(
            crossAxisCount: crossAxisCount, // <-- Gunakan JUMLAH KOLOM DINAMIS
            crossAxisSpacing: spacing,
            mainAxisSpacing: spacing,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 1.0, // Kita set 1:1 (persegi)
            children: [
              _buildMenuCard(
                context,
                icon: Icons.school,
                label: 'Fakultas',
                onTap: () => onNavigate(1),
              ),
              _buildMenuCard(
                context,
                icon: Icons.article,
                label: 'Visi & Misi',
                onTap: () => onNavigate(2),
              ),
              _buildMenuCard(
                context,
                icon: Icons.calendar_today,
                label: 'Agenda',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AgendaScreen(),
                    ),
                  );
                },
              ),
              _buildMenuCard(
                context,
                icon: Icons.contacts,
                label: 'Kontak',
                onTap: () => onNavigate(3),
              ),
            ],
          ),
        );
      },
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
          padding: const EdgeInsets.all(12.0), // <-- Ini sudah diperkecil
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: kPrimaryBlue),
              const SizedBox(height: 8),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
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
    // 1. Bungkus dengan LayoutBuilder untuk membaca lebar layar
    return LayoutBuilder(
      builder: (context, constraints) {
        // 2. Tentukan nilai padding dinamis
        double horizontalPadding;

        // Ini adalah "padding atas" yang Anda minta
        const double verticalPadding = 40.0;

        // 3. Atur padding horizontal berdasarkan lebar layar
        if (constraints.maxWidth > 1200) {
          // Layar sangat besar (Desktop besar)
          // Beri padding 20% di kiri dan kanan
          horizontalPadding = constraints.maxWidth * 0.2;
        } else if (constraints.maxWidth > 800) {
          // Layar besar (Desktop/Tablet)
          // Beri padding 15% di kiri dan kanan
          horizontalPadding = constraints.maxWidth * 0.15;
        } else {
          // Layar kecil (Mobile)
          horizontalPadding = 32.0; // Padding standar
        }

        // 4. Terapkan padding dinamis
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: verticalPadding, // Ini untuk padding atas & bawah
            horizontal: horizontalPadding, // Ini untuk padding kanan & kiri
          ),
          child: Text(
            'Sebagai Perguruan Tinggi yang unggul dan inovatif, Umsida menjadi pilihan tepat yang memberikan pendidikan secara profesional untuk mencetak generasi hebat dan menemukan minat di bidang IPTEKS berlandaskan nilai islam',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              height: 1.5,
            ),
          ),
        );
      },
    );
  }
}

// WIDGET BARU UNTUK SEKSI REKOGNISI
Widget _buildRecognitionSection() {
  // 1. DAFTARKAN SEMUA GAMBAR ASET ANDA DI SINI
  // Ganti ini dengan nama file gambar Anda yang sebenarnya
  final List<String> recognitionImages = [
    'assets/images/recognition/award-1.png',
    'assets/images/recognition/award-2.png',
    'assets/images/recognition/award-3.png',
    'assets/images/recognition/award-4.png',
    'assets/images/recognition/award-5.png',
    'assets/images/recognition/award-6.png',
    'assets/images/recognition/award-7.png',
    'assets/images/recognition/award-8.png',
    'assets/images/recognition/award-9.png',
    'assets/images/recognition/award-10.png',
    'assets/images/recognition/award-11.png',
  ];

  // 2. KONTainer UTAMA DENGAN LATAR BELAKANG BIRU
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(vertical: 32.0),
    child: Column(
      children: [
        // 3. HEADING/JUDUL
        Text(
          'REKOGNISI UMSIDA',
          style: GoogleFonts.poppins(
            color: const Color(0xFFE6C131), // Warna kuning emas
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 24),

        // 4. GRID GAMBAR YANG RESPONSIF
        LayoutBuilder(
          builder: (context, constraints) {
            // Tentukan jumlah kolom berdasarkan lebar layar
            int columnCount;
            if (constraints.maxWidth < 600) {
              columnCount = 2; // Tampilan HP
            } else if (constraints.maxWidth < 1200) {
              columnCount = 3; // Tampilan Tablet
            } else {
              columnCount = 6; // Tampilan Desktop (seperti contoh Anda)
            }

            // Tentukan padding horizontal agar tidak mepet di layar besar
            double horizontalPadding;
            if (constraints.maxWidth > 800) {
              horizontalPadding = constraints.maxWidth * 0.1; // 10% padding
            } else {
              horizontalPadding = 24.0; // 24px padding
            }

            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columnCount, // Jumlah kolom dinamis
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio:
                    2.0, // Rasio Lebar:Tinggi (Asumsi gambar Anda lebar)
              ),
              itemCount: recognitionImages.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              itemBuilder: (context, index) {
                return Image.asset(
                  recognitionImages[index],
                  fit: BoxFit.contain, // 'Contain' agar gambar utuh
                );
              },
            );
          },
        ),
      ],
    ),
  );
}
