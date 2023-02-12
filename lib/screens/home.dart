import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/shared/bottom_navigation.dart';
import 'package:instagram_clone/shared/topbar.dart';
import 'package:instagram_clone/theme.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: const StoriesSection(),
      bottomNavigationBar: bottonNavigation,
    );
  }
}

class StoriesSection extends StatelessWidget {
  const StoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          Story(
            image: "assets/ronaldo.jpg",
            username: "Ronaldo",
          ),
          SizedBox(width: 10),
          Story(
            image: "assets/messi.jpg",
            username: "Messi",
          ),
          SizedBox(width: 10),
          Story(
            image: "assets/neymar.jpg",
            username: "Neymar",
          ),
          SizedBox(width: 10),
          Story(
            image: "assets/mbappe.jpg",
            username: "Mbappe",
          ),
          SizedBox(width: 10),
          Story(
            image: "assets/ronaldo.jpg",
            username: "Ronaldo",
          ),
          SizedBox(width: 10),
          Story(
            image: "assets/mbappe.jpg",
            username: "Mbappe",
          ),
          SizedBox(width: 10),
          Story(
            image: "assets/neymar.jpg",
            username: "Neymar",
          ),
        ],
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story({Key? key, required this.image, required this.username})
      : super(key: key);

  final String image;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(-0.8, -0.6),
                colors: [Colors.purple, Colors.orange],
                radius: 1.0,
              ),
              shape: BoxShape.circle),
          child: Container(
            padding: const EdgeInsets.all(2.5),
            decoration:
                BoxDecoration(color: Colors.grey[800], shape: BoxShape.circle),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                image,
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(),
        Text(username, style: GoogleFonts.poppins(fontSize: 16))
      ],
    );
  }
}
