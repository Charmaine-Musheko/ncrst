import 'package:flutter/material.dart';
import 'package:untitled1/createevent_form.dart';
import 'homescreen.dart'; // Import the HomeScreen

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( 
              'Welcome To  NCRST Science Week',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the HomeScreen
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegistrationScreen()),
                );
              },
              child: Text('Go to Registration'),
            ),
          ],
        ),
      ),
    );
  }
}
