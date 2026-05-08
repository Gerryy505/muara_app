import 'package:flutter/material.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // Background Image
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/boarding.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // Content
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 60,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 40),

                // Title
                const Text(
                  'MAKE YOUR\nHOME BEAUTIFUL',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.1,
                  ),
                ),

                const SizedBox(height: 24),

                // Description
                const Text(
                  'The best simple place where you discover most wonderful furnitures and make your home beautiful',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    height: 1.5,
                  ),
                ),

                const Spacer(),

                // Button
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E1E1E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },

                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}