import 'package:flutter/material.dart';

class VisiMisiScreen extends StatelessWidget {
  const VisiMisiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Visi & Misi',
          style: TextStyle(color: Color(0xFFE6C131)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),

        // IMPLEMENTASI LAYOUT: Column
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Visi Universitas',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white, // <-- Tambahkan .copyWith() ini
              ),
            ),
            const SizedBox(height: 10),

            // IMPLEMENTASI WIDGET: Card
            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Menjadi perguruan tinggi unggul dan inovatif dalam pengembangan IPTEKS berdasarkan nilai-nilai Islam untuk kesejahteraan masyarakat.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Misi Universitas',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white, // <-- Tambahkan .copyWith() ini
              ),
            ),
            const SizedBox(height: 10),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '1. Menyelenggarakan pendidikan dan pengajaran secara profesional sesuai perkembangan IPTEKS berdasarkan nilai-nilai Islam.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '2. Meningkatkan penelitian yang mendukung proses pembelajaran dan pengembangan IPTEKS untuk kesejahteraan masyarakat.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '3. Meningkatkan pengabdian kepada masyarakat untuk kesejahteraan masyarakat.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '4. Meningkatkan kerjasama dengan lembaga di dalam dan luar negeri.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '5. Meningkatkan tata kelola secara professional berdasarkan nilai-nilai Islam.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '6. Meningkatkan pembinaan dan pengembangan kemahasiswaan berdasarkan nilai-nilai Islam.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Tujuan',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white, // <-- Tambahkan .copyWith() ini
              ),
            ),
            const SizedBox(height: 10),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '1. Menghasilkan lulusan yang profesional dalam penguasaan IPTEKS berdasarkan nilai- nilai Islam.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '2. Menghasilkan penelitian untuk kesejateraan masyarakat.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '3. Mewujudkan pengabdian kepada masyarakat untuk kesejahteraan masyarakat.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '4. Mewujudkan kerjasama dengan lembaga di dalam dan luar negeri untuk penguatan Catur Dharma Perguruan Tinggi Muhammadiyah.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '5. Mewujudkan kemandirian perguruan tinggi dengan tata kelola yang profesional berdasarkan nilai- nilai Islam',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '6. Meningkatkan prestasi akademik dan non akademik mahasiswa.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Sasaran',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white, // <-- Tambahkan .copyWith() ini
              ),
            ),
            const SizedBox(height: 10),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      '1. Peningkatan kemampuan mahasiswa dalam penguasaan dan pengembangan IPTEKS berdasarkan nilai-nilai Islam.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '2. Peningkatan kapasitas dan kinerja penelitian dosen dan mahasiswa yang mendukung proses pembelajaran dan pengembangan IPTEKS.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '3. Peningkatan manfaat hasil penelitian untuk kesejahteraan masyarakat.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '4. Peningkatan kapasitas dan kinerja pengabdian kepada masyarakat untuk kesejahteraan masyarakat.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '5. Peningkatan dan perluasan kerjasama dengan lembaga dalam dan luar negeri.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '6. Penguatan tata kelola dan kelembagaan secara profesional berdasarkan nilai-nilai Islam.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '7. Peningkatan etos kerja dan perilaku organisasi yang sesuai dengan nilai-nilai Islam dan Kemuhammadiyahan.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '8. Peningkatan kemampuan mahasiswa dalam pencapaian prestasi.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
