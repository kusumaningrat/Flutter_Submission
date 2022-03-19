import 'package:flutter/material.dart';
import 'package:wisata_kebonayu/TourismPlaces.dart';
import 'About.dart';
import 'main.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Kusuma'),
            accountEmail: Text('kusumanetcom@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Image.asset('assets/images/kusuma.png',
                  fit: BoxFit.cover, width: 90, height: 90),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Tourism Places'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tourism()));
            },
          ),
          ListTile(
            leading: Icon(Icons.update),
            title: Text('History'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 330.0),
            padding: EdgeInsets.only(bottom: 10.0, top: 4.0),
            child: Text(
              'Desa Wisata Kebon Ayu. Copyright 2022.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
