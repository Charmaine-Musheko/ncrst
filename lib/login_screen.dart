import 'package:flutter/material.dart';
import 'package:untitled1/Home.dart';

import 'homescreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
        _emailController.text = "mushekot@gmail.com";
_passwordController.text = "Testing@1";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add login logic here
                final email = _emailController.text;
                final password = _passwordController.text;
                // Implement login logic (e.g., API call)
                Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => HomeScreen(),
  ));
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
