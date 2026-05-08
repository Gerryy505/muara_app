import 'package:flutter/material.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() =>
      _RegisterScreenState();
}

class _RegisterScreenState
    extends State<RegisterScreen> {

  // PASSWORD HIDE/SHOW
  bool isPasswordHidden = true;
  bool isConfirmPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(height: 30),

              // LOGO
              Row(
                children: [

                  const Expanded(
                    child: Divider(
                      thickness: 1,
                      indent: 30,
                      endIndent: 10,
                    ),
                  ),

                  const CircleAvatar(
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

              // TITLE
              const Text(
                "WELCOME",

                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 40),

              // FORM CONTAINER
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),

                padding: const EdgeInsets.all(24),

                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(20),

                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.black12,
                    ),
                  ],
                ),

                child: Column(
                  children: [

                    // NAME
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Name",

                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(8),
                        ),

                        suffixIcon: const Icon(
                          Icons.person_outline,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // EMAIL
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email",

                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(8),
                        ),

                        suffixIcon: const Icon(
                          Icons.email_outlined,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // PASSWORD
                    TextField(
                      obscureText: isPasswordHidden,

                      decoration: InputDecoration(
                        labelText: "Password",

                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(8),
                        ),

                        suffixIcon: IconButton(

                          icon: Icon(
                            isPasswordHidden
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),

                          onPressed: () {

                            setState(() {

                              isPasswordHidden =
                                  !isPasswordHidden;

                            });
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // CONFIRM PASSWORD
                    TextField(
                      obscureText:
                          isConfirmPasswordHidden,

                      decoration: InputDecoration(
                        labelText: "Confirm password",

                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(8),
                        ),

                        suffixIcon: IconButton(

                          icon: Icon(
                            isConfirmPasswordHidden
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),

                          onPressed: () {

                            setState(() {

                              isConfirmPasswordHidden =
                                  !isConfirmPasswordHidden;

                            });
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 35),

                    // SIGN UP BUTTON
                    SizedBox(
                      width: double.infinity,
                      height: 60,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black87,

                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10),
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

                    // SIGN IN
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center,

                      children: [

                        const Text(
                          "Already have account? ",

                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),

                        GestureDetector(

                          onTap: () {

                            Navigator.push(
                              context,

                              MaterialPageRoute(
                                builder: (context) =>
                                    const LoginScreen(),
                              ),
                            );
                          },

                          child: const Text(
                            "Sign in",

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
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