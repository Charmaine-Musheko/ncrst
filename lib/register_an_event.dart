import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Event Detail'),
        // ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/event_image.png'),
                  SizedBox(height: 16),
                  Text(
                    'Public Lecture on IP & TT',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Moses MM'),
                      Text('Free'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text('NCRST'),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text('07 November, 2023'),
                      SizedBox(width: 8),
                      Text('Tuesday'),
                      SizedBox(width: 8),
                      Text('10:00AM-11:00AM'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text('TBA'),
                  SizedBox(height: 8),
                  Text('36 Guild Street, Windhoek'),
                  SizedBox(height: 16),
                  Text(
                    'About Event',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Providing basis information on IP & TT. How IP & IPR protection started. Where Namibia stands in IP & IPR creation, registration, and enforcement. The importance of IP & IPR in innovation and development. The role of NCRST in promoting IP & IPR in Namibia.',
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('REGISTER'),
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
