// ignore_for_file: unused_field, unused_import
import 'package:flutter/material.dart';
import 'pilot_signup.dart';

import 'passenger_signup.dart';
import 'pilot_signup.dart';
import 'signup.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bus Tracking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/signup': (context) => const SignUpScreen(),
        '/signup/passenger': (context) => const PassengerSignUpScreen(),
        '/signup/pilot': (context) => const PilotSignUpScreen(),
        '/': (context) => const RegistrationScreen(),
        '/login': (context) => const LoginScreen(),
        '/person_login': (context) => const PersonLoginScreen(),
        '/pilot_login': (context) => const PilotLoginScreen(),
      },
    ); // MaterialApp
  }
}

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            text: 'B.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 44,
              fontWeight: FontWeight.bold,
            ), //TextStyle
            children: [
              TextSpan(
                text: 'Pilot',
                style: TextStyle(
                  color: Color.fromARGB(255, 232, 229, 228),
                  fontWeight: FontWeight.bold,
                ),//TextStyle
              ), //TextSpan
              TextSpan(
                text: '\nBus Pilot Operator',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ), //TextStyle
              ), //TextSpan
            ],
          ), //TextSpan
        ), //RichText
        backgroundColor: const Color.fromARGB(255, 247, 224, 26),
        centerTitle: true,
        toolbarHeight: 150,
      ), //AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Image.asset(
                'assets/dsBuffer.png',
                width: double.infinity,
              ),
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  side: const BorderSide(color: Colors.black, width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Color.fromARGB(255, 247, 224, 26),
                ),
                child: const Text(
                  'START',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            text: 'B.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 44,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Pilot',
                style: TextStyle(
                  color: Color.fromARGB(255, 232, 229, 228),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '\nBus Pilot Operator',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 247, 224, 26),
        centerTitle: true,
        toolbarHeight: 150,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  'Login as a ',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              // Center the passenger login button
              child: SizedBox(
                width: 200,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/person_login');
                  },
                  icon: const Column(
                    children: [
                      Icon(Icons.person, size: 120, color: Colors.black),
                      SizedBox(height: 5),
                      Text(
                        'Passenger',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  label: const Text(''),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: const BorderSide(color: Colors.black, width: 1),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30), // Small space added here
            Center(
              // Center the pilot login button
              child: SizedBox(
                width: 200,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pilot_login');
                  },
                  icon: const Column(
                    children: [
                      Icon(Icons.directions_bus,
                          size: 120, color: Colors.black),
                      SizedBox(height: 5),
                      Text(
                        'Rider',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  label: const Text(''),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    side: const BorderSide(color: Colors.black, width: 1),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonLoginScreen extends StatefulWidget {
  const PersonLoginScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _PersonLoginScreenState createState() => _PersonLoginScreenState();
}

class _PersonLoginScreenState extends State<PersonLoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _nic = '';
  String _password = '';

  Row signUpPassangerOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.black),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PassengerSignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var nicField = TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || (value.length != 9 && value.length != 12)) {
          return 'Incorrect Email';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null) {
          _nic = value.toString();
        }
      },
    );

    var passwordField = TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.length < 8) {
          return 'Password should be at least 8 characters!';
        }
        return null;
      },
      onSaved: (value) {
        if (value != null) {
          _password = value.toString();
        }
      },
    );