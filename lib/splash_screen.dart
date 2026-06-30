import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frelance/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4E342E),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.coffee, size: 120, color: Color(0xFFE8C39E)),

              SizedBox(height: 25),

              Text(
                "قهوتي",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE8C39E),
                ),
              ),

              SizedBox(height: 8),

              Text(
                "My Coffee",
                style: TextStyle(fontSize: 24, color: Color(0xFFC89B73)),
              ),

              SizedBox(height: 15),

              Text(
                "لحظاتك أجمل مع قهوتك المفضلة",
                style: TextStyle(fontSize: 16, color: Color(0xFFC89B73)),
              ),

              SizedBox(height: 60),

              SizedBox(
                width: 35,
                height: 35,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Color(0xFFE8C39E),
                ),
              ),

              SizedBox(height: 15),

              Text(
                "Loading...",
                style: TextStyle(color: Color(0xFFC89B73), fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
