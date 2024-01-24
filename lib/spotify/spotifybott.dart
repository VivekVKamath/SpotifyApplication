// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:spotify_application/spotify/homepage.dart';
import 'package:spotify_application/spotify/library.dart';
import 'package:spotify_application/spotify/premium.dart';
import 'package:spotify_application/spotify/search.dart';

class SpotifyNav extends StatefulWidget {
  const SpotifyNav({Key? key}) : super(key: key);

  @override
  State<SpotifyNav> createState() => _SpotifyNavState();
}

class _SpotifyNavState extends State<SpotifyNav> {
  int _index = 0;
  final List Navigate = [
    const Spotify(),
    const SpotifySearch(),
    const SpotifyLibrary(),
    const SpotifyPremium()
  ];
  void onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigate[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onItemTapped,
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            label: "Home",
            icon: ImageIcon(
              AssetImage('assets/images/home-5-fill.png'),
            ),
          ),
          const BottomNavigationBarItem(
            label: "Search",
            icon: ImageIcon(AssetImage('assets/images/search-line.png')),
          ),
          const BottomNavigationBarItem(
            label: "Your library",
            icon: ImageIcon(AssetImage('assets/images/music-library.png')),
          ),
          BottomNavigationBarItem(
            label: "Premium",
            icon: Stack(
              children: const [
                Positioned(
                  left: 15,
                  child: Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: 8,
                  ),
                ),
                ImageIcon(AssetImage('assets/images/spotify-fill.png')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
