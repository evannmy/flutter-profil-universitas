import 'package:flutter/material.dart';

class KontakScreen extends StatelessWidget {
  const KontakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kontak Kami',
          style: TextStyle(color: Color(0xFFE6C131)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // IMPLEMENTASI LAYOUT: Card dengan ListTile
            Card(
              elevation: 4,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.location_city, color: Colors.blue[800]),
                    title: const Text('Alamat Kampus'),
                    subtitle: const Text(
                      'Jl. Mojopahit No. 666 B, Sidowayah, Celep, Kec. Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61215',
                    ),
                  ),
                  const Divider(height: 1, indent: 16, endIndent: 16),
                  ListTile(
                    leading: Icon(Icons.phone, color: Colors.blue[800]),
                    title: const Text('Telepon'),
                    subtitle: const Text('+62 851-8379-3309'),
                  ),
                  const Divider(height: 1, indent: 16, endIndent: 16),
                  ListTile(
                    leading: Icon(Icons.email, color: Colors.blue[800]),
                    title: const Text('Email'),
                    subtitle: const Text('sekretariat@umsida.ac.id'),
                  ),
                  const Divider(height: 1, indent: 16, endIndent: 16),
                  ListTile(
                    leading: Icon(Icons.public, color: Colors.blue[800]),
                    title: const Text('Website'),
                    subtitle: const Text('https://umsida.ac.id/'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
