import 'package:flutter/material.dart';



class Apprenticeship extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apprenticeship Opportunities'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Introduction'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => IntroductionPage()),
              );
            },
          ),
          ListTile(
            title: Text('Apprenticeship Listings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApprenticeshipListingsPage()),
              );
            },
          ),
          ListTile(
            title: Text('Success Stories'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SuccessStoriesPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Introduction'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Overview of the benefits and importance of apprenticeship programs. Highlight key industries and occupations offering apprenticeships.',
        ),
      ),
    );
  }
}

class ApprenticeshipListingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apprenticeship Listings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Apprenticeship Program 1'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApprenticeshipDetailsPage()),
              );
            },
          ),
          ListTile(
            title: Text('Apprenticeship Program 2'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ApprenticeshipDetailsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ApprenticeshipDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apprenticeship Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Program Name: Apprenticeship Program 1'),
            SizedBox(height: 10),
            Text('Description: Comprehensive description of the program.'),
            SizedBox(height: 10),
            Text('Eligibility Criteria: Detailed requirements for participation.'),
            SizedBox(height: 10),
            Text('Fields Covered: Specific industries and occupations targeted.'),
            SizedBox(height: 10),
            Text('Duration: Length of the apprenticeship.'),
            SizedBox(height: 10),
            Text('Format: On-the-job training, classroom instruction, hybrid.'),
            SizedBox(height: 10),
            Text('Benefits: Information about earnings, experience, credentials.'),
            SizedBox(height: 10),
            Text('Application Process: Step-by-step instructions for applying.'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApplicationFormPage()),
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

class ApplicationFormPage extends StatefulWidget {
  @override
  _ApplicationFormPageState createState() => _ApplicationFormPageState();
}

class _ApplicationFormPageState extends State<ApplicationFormPage> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _educationController = TextEditingController();
  final _employmentStatusController = TextEditingController();
  final _fieldOfInterestController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Full Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Phone'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Address'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _educationController,
                decoration: InputDecoration(labelText: 'Educational Background'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your educational background';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _employmentStatusController,
                decoration: InputDecoration(labelText: 'Employment Status'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your employment status';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _fieldOfInterestController,
                decoration: InputDecoration(labelText: 'Field of Interest'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your field of interest';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Submitting Application')),
                    );
                    // Add submission logic here
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

class SuccessStoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success Stories'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('John Doe - Construction Apprenticeship'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SuccessStoryDetailsPage()),
              );
            },
          ),
          ListTile(
            title: Text('Jane Smith - Healthcare Apprenticeship'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SuccessStoryDetailsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SuccessStoryDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Success Story Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: John Doe'),
            SizedBox(height: 10),
            Text('Field: Construction Apprenticeship'),
            SizedBox(height: 10),
            Text('Story: John completed his apprenticeship and now works as a skilled construction worker.'),
          ],
        ),
      ),
    );
  }
}
