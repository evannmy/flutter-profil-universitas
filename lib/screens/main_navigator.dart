import 'package:flutter/material.dart';
import 'package:profil_universitas/screens/home_screen.dart';
import 'package:profil_universitas/screens/fakultas_screen.dart';
import 'package:profil_universitas/screens/visi_misi_screen.dart';
import 'package:profil_universitas/screens/kontak_screen.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedIndex = 0;

  late final List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    // Inisialisasi _widgetOptions di sini agar bisa meneruskan fungsi
    _widgetOptions = <Widget>[
      // Teruskan fungsi _onItemTapped ke HomeScreen
      HomeScreen(onNavigate: _onItemTapped),
      FakultasScreen(),
      VisiMisiScreen(),
      KontakScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Fakultas'),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Visi Misi',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: 'Kontak'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
