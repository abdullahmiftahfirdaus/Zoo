import 'package:flutter/material.dart';
import 'package:zoo/UI/zoo_page.dart';
import 'package:zoo/UI/zoo_page2.dart';
import 'package:zoo/UI/zoo_page3.dart';
import 'package:zoo/UI/zoo_page4.dart';
import 'package:zoo/model/about.dart';
import 'package:zoo/model/maps.dart';
import 'splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZOO',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/zoo': (context) => ZooPage(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.green.shade900,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightGreen.shade900,
        ),
      ),
    );
  }
}

class ZooPage extends StatefulWidget {
  @override
  _ZooPageState createState() => _ZooPageState();
}

class _ZooPageState extends State<ZooPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ZOO',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/forest.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: IconButton(
              icon: Icon(Icons.location_on, color: Colors.white, size: 32.0),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapsPage()),
                );
              },
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Selamat datang di ZOO!',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReptilePage()),
                    );
                  },
                  child: Text('Reptil'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    primary: Colors.lightGreen.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MamaliaPage()),
                    );
                  },
                  child: Text('Mamalia'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    primary: Colors.lightGreen.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AvesPage()),
                    );
                  },
                  child: Text('Aves'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    primary: Colors.lightGreen.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PiscesPage()),
                    );
                  },
                  child: Text('Pisces'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50),
                    primary: Colors.lightGreen.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
