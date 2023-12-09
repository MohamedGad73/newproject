import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:re7latekk/SignInOrSignUp.dart';
import 'package:re7latekk/comingSoon.dart';
import 'package:re7latekk/companyRegistration.dart';

class login_company extends StatelessWidget {
  const login_company({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignInSignUp_company(),
                ),
              );
            },
          ),
        ),
        body: logincompany(),
      ),
    );
  }
}

class logincompany extends StatelessWidget {
  logincompany({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> signInWithEmailAndPassword(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);

      // Navigate to the next screen or perform other actions.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const coming_soon(),
        ),
      );
      // If login is successful, you can navigate to the next screen or perform any other actions.
      print("User signed in: ${userCredential.user!.uid}");
    } on FirebaseAuthException catch (e) {
      // Handle errors
      print("Error during sign in: ${e.message}");
      // You can display an error message to the user here
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    const labelStyle = TextStyle(color: Colors.black, fontSize: 17);
    const inputStyle = TextStyle(color: Colors.black, fontSize: 18);

    return Material(
      child: SingleChildScrollView(
        // Wrap the column with SingleChildScrollView
        child: Column(
          children: [
            Container(
              width: 430,
              height: 800,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Container(
                    width: 430,
                    height: 350,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('Images/LogInCompany.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Material(
                          // Wrap TextField with Material widget
                          color: Color.fromARGB(31, 167, 137, 137),
                          child: TextField(
                            controller: emailController,
                            style: inputStyle,
                            decoration: InputDecoration(
                              labelText: "Email",
                              labelStyle: labelStyle,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Material(
                          // Wrap TextField with Material widget
                          color: Color.fromARGB(31, 167, 137, 137),
                          child: TextField(
                            controller: passwordController,
                            style: inputStyle,
                            decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: labelStyle,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            obscureText: true,
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            signInWithEmailAndPassword(context);
                          },
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            decoration: BoxDecoration(
                              color: const Color(0xFF045F91),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account ?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 40, 46, 49),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpCompany(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Color(0xFF045F91),
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
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
          ],
        ),
      ),
    );
  }
}
