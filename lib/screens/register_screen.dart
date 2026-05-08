import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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

              const SizedBox(height: 50),

              const Text(
                "WELCOME",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
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

                    // Name
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: Icon(Icons.keyboard_arrow_down),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Email
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
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

                    const SizedBox(height: 20),

                    // Confirm Password
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirm password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                    ),

                    const SizedBox(height: 35),

                    // Sign Up Button
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

                        onPressed: () {},

                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [

                        Text(
                          "Already have account? ",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),

                        Text(
                          "Sign in",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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