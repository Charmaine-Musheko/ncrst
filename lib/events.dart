import 'package:flutter/material.dart';


class PublicLectureApp extends StatelessWidget {
    final String title;
  final String date;
  final String time;
  final String location;
  final String going;

  const PublicLectureApp({
    Key? key,
    required this.title,
    required this.date,
    required this.time,
    required this.location,
    required this.going,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Public Lecture on IP & TT'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Event details
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    date,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    time,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    location,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            // About event
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Providing basic information on IP & TT. How IP & IPR protection started. Where Namibia stands in IP & IPR creation, registration.',
                ),
              ),
            ),
            // Register button
            Container(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the LoginScreen when the button is pressed
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(), // Replace with your LoginScreen widget
                    ),
                  );
                },
                child: Text('REGISTER'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Registration Form'),
      // ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                // Implement registration logic here
                // You can handle the registration process here
                // For simplicity, it's left empty in this example
              },
              child: Text('Book'),
            ),
          ],
        ),
      ),
    );
  }
}
