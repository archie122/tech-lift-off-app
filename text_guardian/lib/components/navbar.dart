import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountEmail: Text('example@gmail.com'),
            accountName: Text('John Doe'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            decoration: BoxDecoration(color: Color.fromARGB(255, 16, 177, 99)),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/homepage');
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
          ListTile(
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          ListTile(
            title: const Text('Results'),
            onTap: () {
              Navigator.pushNamed(context, '/results');
            },
          )
        ],
      ),
    );
  }
}
