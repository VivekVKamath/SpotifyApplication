import 'package:flutter/material.dart';
class SpotifyPremium extends StatefulWidget {
  const SpotifyPremium({Key? key}) : super(key: key);

  @override
  State<SpotifyPremium> createState() => _SpotifyPremiumState();
}

class _SpotifyPremiumState extends State<SpotifyPremium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(),
        ),
      ),
    );
  }
}
