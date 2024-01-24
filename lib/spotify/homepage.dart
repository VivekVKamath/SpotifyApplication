// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';

class Spotify extends StatefulWidget {
  const Spotify({Key? key}) : super(key: key);

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  int index = 0;
  final List<Map<String, dynamic>> vicky = [
    {"I1": "assets/images/Kannada Hits.jpeg"},
    {"I1": "assets/images/Runn.jpg"},
    {"I1": "assets/images/Arabic.jpg"}
  ];

  final List<Map<String, dynamic>> grid = [
    {
      "I1":
      "https://i1.sndcdn.com/artworks-y6qitUuZoS6y8LQo-5s2pPA-t500x500.jpg",
      "N1": "Liked Songs"
    },
    {
      "I1":
      "https://lastfm.freetls.fastly.net/i/u/ar0/bb3843bfab8279d6cb10f58d3d2a3fe4.jpg",
      "N1": "Arijit Singh"
    },
    {
      "I1":
      "https://i.ytimg.com/an/Go6O1wX8H-c/12212190978605438099_mq.jpg?v=60ff7af4",
      "N1": "Navarasa\n(Original..."
    },
    {
      "I1":
      "https://c.saavncdn.com/307/P-Jayachandran-Hits-Malayalam-2015-500x500.jpg",
      "N1": "Daily Mix2"
    },
    {
      "I1":
      "https://c.saavncdn.com/016/Bollywood-Dance-Workout-6WeeksToDecember-Hindi-2015-500x500.jpg",
      "N1": "Bollywood\nWorkout"
    },
    {
      "I1":
      "https://c.saavncdn.com/307/P-Jayachandran-Hits-Malayalam-2015-500x500.jpg",
      "N1": "Hridayam Full\nsongs"
    },
  ];
  void onItemTapped(int index) {
    setState(() {
      index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Good Morning",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                    const SizedBox(
                      width: 50,
                    ),
                    Stack(
                      children: const [
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        Positioned(
                            left: 3.5,
                            top: 2,
                            child: Icon(
                              Icons.circle,
                              color: Colors.blue,
                              size: 8,
                            )),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(Icons.access_time, color: Colors.white),
                    const SizedBox(
                      width: 18,
                    ),
                    const Icon(Icons.settings, color: Colors.white)
                  ],
                ),

                ///buttons
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Colors.grey.shade800),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        child: const Text(
                          "Music",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Colors.grey.shade800),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        child: const Text(
                          "Podcasts & Shows",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                ///Liked Songs and Arijit Singh
                SizedBox(
                  height: 250,
                  width: 2000,
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: grid.length,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 0,
                        mainAxisExtent: 80,
                        crossAxisSpacing: 4),
                    itemBuilder: (BuildContext, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Row(
                          children: [
                            Container(
                              height: 60,
                              width: 158,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  color: Colors.grey.shade900),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.zero,
                                        topRight: Radius.zero),
                                    child:
                                    Image.network("${grid[index]['I1']}"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "${grid[index]['N1']}",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("Jump back in",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Container(
                        width: 350,
                        height: 145,
                        padding: const EdgeInsets.only(left: 0.0000000001),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: vicky.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: SizedBox(
                                  height: 200,
                                  width: 130,
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                          child: Image.asset(
                                            "${vicky[index]['I1']}",
                                            fit: BoxFit.fill,
                                          )),
                                    ],
                                  ),
                                ),
                              );
                            })),
                    const SizedBox(
                      height: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 60,
                        color: Colors.pinkAccent.shade100,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                      "https://i.ytimg.com/an/Go6O1wX8H-c/12212190978605438099_mq.jpg?v=60ff7af4")),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  const Text("Navarasa(Original..."),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "A.R Rahman, Karthik",
                                    style:
                                    TextStyle(color: Colors.grey.shade400),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const ImageIcon(
                              AssetImage("assets/images/headphones.png"),
                              color: Colors.green,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const ImageIcon(
                              AssetImage("assets/images/heart.png"),
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const ImageIcon(
                              AssetImage("assets/images/pause.png"),
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
