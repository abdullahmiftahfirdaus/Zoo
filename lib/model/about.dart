import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About',
      home: Scaffold(
        appBar: AppBar(
          title: Text('About'),
          backgroundColor: Colors.white10,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/africa.jpg'), // replace with your background image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              color: Colors.transparent, // Set this to transparent to allow the image to show through
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildProfileContainer(
                    'Abdullah Miftah Firdaus',
                    '17210625',
                    'assets/singa.jpg',
                  ),
                  buildProfileContainer(
                    'Alwan Yanuari',
                    '17210633',
                    'assets/Ikan pari.jpg',
                  ),
                  buildProfileContainer(
                    'Ramadhan Astrian Pratama',
                    '17211049',
                    'assets/beo.jpg',
                  ),
                  buildProfileContainer(
                    'Setyo Ningrum',
                    '17210704',
                    'assets/turtle.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileContainer(String name, String nim, String photoPath) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(photoPath),
            ),
            SizedBox(height: 8),
            Text(
              'Nama: $name',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              'NIM: $nim',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(AboutPage());
}
