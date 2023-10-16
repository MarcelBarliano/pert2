import 'package:flutter/material.dart';

void main() {
  runApp(PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatefulWidget {
  @override
  _PortfolioScreenState createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(), // Add your home screen widget
    ProjectScreen(), // Add your project screen widget
    ContactScreen(), // Add your contact screen widget
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text('Curicullum Vitae', style: TextStyle(color: Colors.black),
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.yellow,
        unselectedItemColor: Colors. blueAccent.withOpacity(1),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Proyek',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Kontak',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/img.jpg', // Replace with the path to your image
              width: 250, // Adjust the width as needed
              height: 250, // Adjust the height as needed
            ),
            SizedBox(height: 20),
            Text(
              'Marcel Barliano',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Teknik Informatika',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Universitas ESA Unggul',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget _buildDataRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 9.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label + ': ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value),
      ],
    ),
  );
}

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Text('Riwayat Pekerjaan',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          _buildDataRow('Nama ', 'Marcel Barliano'),
          _buildDataRow('~ Tempat Tanggal Lahit', 'Tangerang, 14-03-2003'),
          _buildDataRow('~ Jabatan', 'Karyawan Swasta'),
          _buildDataRow('~ Pendidikan', '- SMA Berijazah 2021'),
        ],
      ),
    );
  }
}
class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Text('Contact Me',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          _buildDataRow('email ', 'marcelbarliano.03@student.esaunggul.ac.id'),
          _buildDataRow('~ Contact', '089637431415'),
          _buildDataRow('~ Instagram', 'M_barliano'),
        ],
      ),
    );
  }
}
