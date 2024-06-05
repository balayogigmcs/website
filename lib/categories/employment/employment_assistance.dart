import 'package:flutter/material.dart';

class EmploymentAssistance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employment Assistance Services'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Text(
            'Employment Assistance Services',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          AssistanceServiceCard(
            title: 'Job Placement',
            description: 'Assistance with finding job opportunities.',
          ),
          AssistanceServiceCard(
            title: 'Resume Building',
            description: 'Workshops to help you create a professional resume.',
          ),
          AssistanceServiceCard(
            title: 'Interview Preparation',
            description: 'Sessions to prepare you for job interviews.',
          ),
          AssistanceServiceCard(
            title: 'Career Counseling',
            description: 'Guidance to help you choose the right career path.',
          ),
        ],
      ),
    );
  }
}

class AssistanceServiceCard extends StatelessWidget {
  final String title;
  final String description;

  AssistanceServiceCard({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ServiceDetailScreen(serviceTitle: title),
            ),
          );
        },
      ),
    );
  }
}

class ServiceDetailScreen extends StatelessWidget {
  final String serviceTitle;

  ServiceDetailScreen({required this.serviceTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(serviceTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              serviceTitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Description: Detailed information about the service.',
            ),
            SizedBox(height: 16),
            Text(
              'Eligibility Criteria: Information about who can access this service.',
            ),
            SizedBox(height: 16),
            Text(
              'Services Offered: Specific details about what the service includes.',
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApplicationFormScreen(serviceTitle: serviceTitle)),
                );
              },
              child: Text('Apply Now'),
            ),
          ],
        ),
      ),
    );
  }
}

class ApplicationFormScreen extends StatelessWidget {
  final String serviceTitle;

  ApplicationFormScreen({required this.serviceTitle});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apply for $serviceTitle'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email Address'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Employment Status'),
                items: ['Employed', 'Unemployed', 'Underemployed', 'Student']
                    .map((status) => DropdownMenuItem<String>(
                          value: status,
                          child: Text(status),
                        ))
                    .toList(),
                onChanged: (value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select your employment status';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Resume'),
                onTap: () {
                  // Code to upload resume
                },
                readOnly: true,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process data
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
