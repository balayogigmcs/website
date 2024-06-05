import 'package:flutter/material.dart';



class WorkforceDevelopment extends StatelessWidget {
  final List<Map<String, String>> initiatives = [
    {
      'title': 'Digital Literacy Training',
      'description':
          'Basic to advanced computer skills and digital tools training.',
    },
    {
      'title': 'Youth Employment Program',
      'description':
          'Programs designed to help young individuals gain essential skills and work experience.',
    },
    // Add more initiatives as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workforce Development Initiatives'),
      ),
      body: ListView.builder(
        itemCount: initiatives.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(initiatives[index]['title']!),
            subtitle: Text(initiatives[index]['description']!),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    InitiativeDetailsScreen(initiative: initiatives[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}

class InitiativeDetailsScreen extends StatelessWidget {
  final Map<String, String> initiative;

  InitiativeDetailsScreen({required this.initiative});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(initiative['title']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              initiative['title']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(initiative['description']!),
            SizedBox(height: 16),
            Text(
              'Target Population:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('Youth, Veterans, Individuals with Disabilities, etc.'),
            SizedBox(height: 16),
            Text(
              'Skills Training:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
                'Digital Literacy, Soft Skills, Industry-Specific Training, etc.'),
            SizedBox(height: 16),
            Text(
              'Employer Partnerships:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('ABC Manufacturing, XYZ Healthcare, 123 Tech Solutions'),
            SizedBox(height: 16),
            Text(
              'Collaboration Opportunities:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
                'Employer Partnerships, Educational Institutions, Community Organizations'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ParticipationFormScreen(),
                  ),
                );
              },
              child: Text('Participate in this Initiative'),
            ),
          ],
        ),
      ),
    );
  }
}

class ParticipationFormScreen extends StatefulWidget {
  @override
  _ParticipationFormScreenState createState() =>
      _ParticipationFormScreenState();
}

class _ParticipationFormScreenState extends State<ParticipationFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _programInterestController = TextEditingController();
  final _trainingInterestController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Participation Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
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
                controller: _programInterestController,
                decoration: InputDecoration(labelText: 'Targeted Program Interest'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your program interest';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _trainingInterestController,
                decoration: InputDecoration(labelText: 'Skills Training Interest'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your training interest';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process data
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Submitting form')),
                    );
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

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _programInterestController.dispose();
    _trainingInterestController.dispose();
    super.dispose();
  }
}
