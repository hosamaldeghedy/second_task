import 'package:flutter/material.dart';
class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
        Color(0xFF6DB3F2),
    Color(0xFFBF3EFF),
    ],
    ),
    ),

    child: Center(
    child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
    Container(
    width: 120,
    height: 120,
    decoration: const BoxDecoration(
    color: Colors.white,
    shape: BoxShape.circle,
    ),
    child: const Center(
    child: Icon(
    Icons.palette,
    color: Colors.red,
    size: 45,
    ),
    ),
    ),

    const SizedBox(height: 30),
    const Text(
    "welcome 😉",
    style: TextStyle(
    fontSize: 21,
    color: Colors.black87,
    fontWeight: FontWeight.w400,
    ),
    ),
    ],
    ),
    ),
    ),
    );
  }
}
