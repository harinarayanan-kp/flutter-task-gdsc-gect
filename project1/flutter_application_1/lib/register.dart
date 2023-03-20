import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginscreen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(height: 80,),
          const Text(
            "Create an account",
            style: TextStyle(fontSize: 28),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Signing up or login to see\n our top picks for you.",
            style: TextStyle(fontSize: 17),
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 50,
            width: 325,
            child: TextField(
              obscuringCharacter: '*',
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
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
          const SizedBox(
            height: 20,
          ),
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
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(106, 147, 71, 1),
                  borderRadius: BorderRadius.circular(5)),
              height: 50,
              width: 325,
              child: const Center(
                child: Text(
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    "Get Started"),
              ),
            ),
          ),
          const SizedBox(
            height: 125,
          ),
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
                        child: Image.asset('assets/images/mDHRja57RuZy.png')),
                    const SizedBox(width: 10),
                    const Text(
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        "Continue with Google"),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Have an account?"),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Text(
                  "log in",
                  style: TextStyle(color: Color.fromARGB(255, 143, 142, 255)),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
