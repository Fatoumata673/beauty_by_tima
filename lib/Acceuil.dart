import 'package:beauty_by_tima/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ACCEUIL',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 214, 120, 151),
        centerTitle: true,
      ),
      drawer: Drawer(
        width: 210,
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Tima'),
              accountEmail: Text('tima@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/prfl.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/afro.jpg'),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.teal,
                size: 25,
              ),
              title: Text('home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.login,
                color: Colors.teal,
                size: 25,
              ),
              title: Text('Déconnexion'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.teal,
                size: 25,
              ),
              title: Text('profile'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
