import 'package:flutter/material.dart';

class SpotifyLibrary extends StatefulWidget {
  const SpotifyLibrary({Key? key}) : super(key: key);

  @override
  State<SpotifyLibrary> createState() => _SpotifyLibraryState();
}

class _SpotifyLibraryState extends State<SpotifyLibrary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.purpleAccent,
                      child: Text("V",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Your Library",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    ImageIcon(
                      AssetImage("assets/images/search-line.png"),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Playlists",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Albums",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      "Artists",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: const [
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                      size: 10,
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                      size: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Recents",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 234,
                    ),
                    Icon(Icons.apps, color: Colors.white)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
