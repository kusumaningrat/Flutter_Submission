import 'package:flutter/material.dart';

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
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Tourism Places'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('About'),
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Exit'),
          ),
          Container(
            margin: EdgeInsets.only(top: 250.0),
            child: Text(
              "Desa Wisata Kebon Ayu. Copyright 2022",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              // style: TextStyle(
              //     fontSize: 30.0,
              //     fontWeight: FontWeight.bold,
              //     fontFamily: 'Poppins'),
            ),
          ),
        ],
      ),
    );
  }
}
