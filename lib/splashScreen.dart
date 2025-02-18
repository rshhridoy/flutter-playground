import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wscubetech/StartingScreen.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize AnimationController
    _controller = AnimationController(
      duration: Duration(seconds: 5), // Animation Duration
      vsync: this,
    )..forward(); // Start the animation

    // Define a scale animation from 0.5x to 1.0x
    _animation = Tween<double>(begin: 0.5, end: 5).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut, // Smooth zoom effect
      ),
    );

    // Navigate to next screen after 5 seconds
    Timer(Duration(seconds: 5), () {
      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Startingscreen(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sabrina Carpenter!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: ScaleTransition(
                scale: _animation, // Apply animation
                child: Image.asset(
                    'assets/images/sabrina-carpenter-alan-walker-song.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
