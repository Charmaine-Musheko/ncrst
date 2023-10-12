import 'package:flutter/material.dart';

class ActivityRegistrationForm extends StatefulWidget {
  @override
  _ActivityRegistrationFormState createState() => _ActivityRegistrationFormState();
}

class _ActivityRegistrationFormState extends State<ActivityRegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  String timeOfActivity = '';
  String nameOfActivity = '';
  String descriptionOfActivity = '';
  DateTime dateOfActivity = DateTime.now();
  String categoryOfActivity = '';
  String locationOfActivity = '';
  String activityVenue = '';
  String contactInfo = '';
  String targetAudience = '';
  int participantsRequired = 0;
  bool preRegistrationRequired = false;
  String hostInstitution = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Activity Registration Form'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Time of Activity (e.g., 09:00-10:00)'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the time of activity';
                  }
                  return null;
                },
                onSaved: (value) {
                  timeOfActivity = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Name of Activity'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the name of the activity';
                  }
                  return null;
                },
                onSaved: (value) {
                  nameOfActivity = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Description of Activity (max 300 words)'),
                maxLines: 5,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the description of the activity';
                  }
                  return null;
                },
                onSaved: (value) {
                  descriptionOfActivity = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Date of Activity (06-10 November 2023)'),
                validator: (value) {
                  // Add validation for date range here
                  return null;
                },
                onSaved: (value) {
                  // Convert and store the date
                  // Example: dateOfActivity = DateTime.parse(value);
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Category of Activity'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the category of the activity';
                  }
                  return null;
                },
                onSaved: (value) {
                  categoryOfActivity = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Location of Activity (Town)'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the location of the activity';
                  }
                  return null;
                },
                onSaved: (value) {
                  locationOfActivity = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Activity Venue (if already sourced)'),
                onSaved: (value) {
                  activityVenue = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact Info (Name, Email, Tel, Institution & Designation)'),
                maxLines: 3,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the contact information';
                  }
                  return null;
                },
                onSaved: (value) {
                  contactInfo = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Target Audience'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the target audience';
                  }
                  return null;
                },
                onSaved: (value) {
                  targetAudience = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'No of Participants Required'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the number of participants required';
                  }
                  return null;
                },
                onSaved: (value) {
                  participantsRequired = int.tryParse(value!) ?? 0;
                },
              ),
              Row(
                children: [
                  Text('Pre-registration Required?'),
                  Checkbox(
                    value: preRegistrationRequired,
                    onChanged: (value) {
                      setState(() {
                        preRegistrationRequired = value!;
                      });
                    },
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Host Institution'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the host institution';
                  }
                  return null;
                },
                onSaved: (value) {
                  hostInstitution = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Handle form submission here
                    // You can access the form data in the variables defined above
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
