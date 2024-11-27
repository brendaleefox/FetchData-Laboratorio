
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Categoria Cocktails', style: TextStyle(fontSize: 15)),
        const Text('Mojito', style: TextStyle(fontSize: 13)),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: Image.asset(
            'asset/images/image1.jpg',
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        const Text('Categoria Shots', style: TextStyle(fontSize: 15)),
        const Text('Tequila', style: TextStyle(fontSize: 13)),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: Image.asset(
            'asset/images/image2.jpg',
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}