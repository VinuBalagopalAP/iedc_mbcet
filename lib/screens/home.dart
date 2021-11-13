import 'package:flutter/material.dart';
import 'package:iedc_mbcet/screens/dashboard.dart';
import 'package:iedc_mbcet/screens/favourites.dart';
import 'package:iedc_mbcet/screens/help.dart';
import 'package:iedc_mbcet/screens/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  Widget bodyPage(int ix) {
    switch (ix) {
      case 0:
        return const Dashboard(); // home page
      case 1:
        return const FavsPage(); // favs page
      case 2:
        return const ProfilePage(); // profile page
      case 3:
        return const HelpScreen(); // help page

      default:
        return Container(
          color: Colors.black,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facebook'),
      ),
      body: bodyPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int nu) {
          setState(() {
            _currentIndex = nu;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: "Help",
          ),
        ],
      ),
    );
  }
}
