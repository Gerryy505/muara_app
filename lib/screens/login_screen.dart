import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(height: 30),

              // Logo
              Row(
                children: [

                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 10,
                    ),
                  ),

                  CircleAvatar(
                   radius: 35,
                   backgroundColor: Colors.white,
                   backgroundImage: AssetImage(
                   'assets/images/pattern.png',
                   ),
                   ),


                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 30,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              const Text(
                "Hello!",
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.black,
                ),
              ),

              const Text(
                "WELCOME BACK",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 40),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.black12,
                    )
                  ],
                ),

                child: Column(
                  children: [

                    // Email
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Password
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 30),

                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),

                        onPressed: () {
                         Navigator.push(
                          context,
                         MaterialPageRoute(
                         builder: (context) => const HomeScreen(),
                       ),
                     );
                        },

                        child: const Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const RegisterScreen(),
                          ),
                        );
                      },

                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}