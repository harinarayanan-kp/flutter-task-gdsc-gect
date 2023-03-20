import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                  },
                  child: const Text(
                    "x",
                    style: TextStyle(fontSize: 22, color: Colors.brown),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 28),
                ),
                const SizedBox(height: 10),
                const SizedBox(
                    width: 250,
                    child: Text(
                      "Signing up or login to see our top picks for you.",
                      style: TextStyle(fontSize: 17),
                    )),
                const SizedBox(height: 50),
                const Text("Email Address"),
                const SizedBox(height: 15),
                SizedBox(
                  height: 50,
                  width: 325,
                  child: TextField(
                    obscuringCharacter: '*',
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text("Password"),
                const SizedBox(height: 15),
                SizedBox(
                  height: 50,
                  width: 325,
                  child: TextField(
                    obscuringCharacter: '*',
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreenOne()));
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(106, 147, 71, 1),
                          borderRadius: BorderRadius.circular(5)),
                      height: 50,
                      width: 325,
                      child: const Center(
                          child: Text(
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                              "Login"))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Forgot password?"),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Reset here", style: TextStyle(color: Color.fromARGB(255, 143, 142, 255)),),
                        ),
                      ],
                    ),
                    const SizedBox(height: 75),
                    const Text("Or Login with"),
                    const SizedBox(height: 20),
                    TextButton(
                      onPressed: () {},
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(225, 160, 103, 1),
                                borderRadius: BorderRadius.circular(5)),
                            height: 50,
                            width: 325,
                            child: Row(
                              children: [
                                const SizedBox(width: 10),
                                SizedBox(
                                    width: 30,
                                    child: Image.asset(
                                        'assets/images/mDHRja57RuZy.png')),
                                const SizedBox(width: 10),
                                const Text(
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                    "Continue with Google"),
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
