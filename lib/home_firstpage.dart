import 'package:flutter/material.dart';
import 'package:untitled1/events.dart';

class UpcomingEventsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Upcoming Events'),
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        // ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Events',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Public Lectures'),
                      Text('See All'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return EventCard(
                          title: 'Public Lecture on IP & TT',
                          date: '07 November, 2023',
                          time: '10:00AM-11:00AM',
                          location: 'General Da',
                          going: '+20 Going',
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Exhibitions'),
                      Text('See All'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return EventCard(
                          title: 'Windhoek Art Gallery Exhibition',
                          date: '08 November, 2023',
                          time: '9:00AM-5:00PM',
                          location: 'Radius Gallery',
                          going: '+10 Going',
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Scientific'),
                      Text('See All'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return EventCard(
                          title: 'NCRST Science Fair',
                          date: '10 November, 2023',
                          time: '10:00AM-4:00PM',
                          location: 'NCRST Campus',
                          going: '+50 Going',
                        );
                      },
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

class EventCard extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String location;
  final String going;

  const EventCard({
    Key? key,
    required this.title,
    required this.date,
    required this.time,
    required this.location,
    required this.going,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      margin: EdgeInsets.all(8),
      child: Card(
        elevation: 4,
        child: GestureDetector(
          onTap:  () {
                // Navigate to the LoginScreen when tapped
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PublicLectureApp(date: date, going: going, location: location, time: time, title: title), // Replace with your LoginScreen widget
                  ),
                ); 
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/ncrst logo.jpeg',
              height: 50,),
              SizedBox(height: 4),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                date,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4),
              Text(
                time,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4),
              Text(
                location,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    going,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.deepOrange,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward_ios, size: 12, color: Colors.deepOrange),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}