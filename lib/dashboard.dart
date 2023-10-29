import 'package:flutter/material.dart';
import 'package:scircle/profile.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Horizontal Image View
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset(
                  'assets/images/pict01.jpg',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/pict02.jpg',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/pict03.jpg',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),

          // Vertical Card View
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Selamat pagii',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Hallo',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Apa kabar',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // Menu Navigator
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Logout',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(
                  username: "nityasantt",
                  email: "tustika.nityasa@gmail.com",
                ),
              ),
            );
          } else if (index == 1) {
            Navigator.popUntil(context, (route) => route.isFirst);
          }
        },
      ),
    );
  }
}
