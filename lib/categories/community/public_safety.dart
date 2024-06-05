import 'package:flutter/material.dart';


class PublicSafety extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Public Safety Initiatives'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Crime Prevention Programs'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProgramForm(
                    programType: 'Crime Prevention Programs',
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Emergency Preparedness'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProgramForm(
                    programType: 'Emergency Preparedness',
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Community Policing and Engagement'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProgramForm(
                    programType: 'Community Policing and Engagement',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProgramForm extends StatelessWidget {
  final String programType;

  ProgramForm({required this.programType});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(programType),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Program Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the program name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Program Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the program description';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Target Audience'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the target audience';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Estimated Cost'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the estimated cost';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Timeline'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the timeline';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact Information'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the contact information';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Submitting form')),
                      );
                    }
                  },
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
