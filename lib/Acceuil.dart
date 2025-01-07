import 'package:beauty_by_tima/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 20,
          ),
          onPressed: null,
        ),
        title: Text(
          'Explore',
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 48,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.place,
              color: Colors.grey[800],
              size: 100,
            ),
            onPressed: null,
          ),
        ],
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      ),
    );
  }
}
