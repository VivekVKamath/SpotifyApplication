import 'package:flutter/material.dart';

class SpotifySearch extends StatefulWidget {
  const SpotifySearch({Key? key}) : super(key: key);

  @override
  State<SpotifySearch> createState() => _SpotifySearchState();
}

class _SpotifySearchState extends State<SpotifySearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Search",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.camera_enhance,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      color: Colors.grey.shade900,
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          ImageIcon(
                            AssetImage("assets/images/search-line.png"),
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "What do you want to listen to?",
                            style: TextStyle(
                                color: Colors.grey, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Browse all",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
