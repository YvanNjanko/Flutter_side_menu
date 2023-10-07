import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Yvan Njanko'),
            accountEmail: const Text('yvannjanko04@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(child: Image.asset('images/2.jpeg')),
            ),
            decoration: const BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: AssetImage('images/1.jpeg'), fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.file_upload),
            title: Text('Upload shot'),
            onTap: () => print('Upload tapped'),
          ),
           ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => print('Share tapped'),
          ), ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            onTap: () => print('Notifications tapped'),
          ), ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => print('Settings tapped'),
          )
        ],
      ),
    );
  }
}
