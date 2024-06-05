import 'package:flutter/material.dart';


class JobTrainingProgram {
  final String name;
  final String description;
  final String curriculum;
  final String duration;
  final String format;
  final String certifications;
  final String eligibility;
  final String applicationProcess;
  final String deadlines;

  JobTrainingProgram({
    required this.name,
    required this.description,
    required this.curriculum,
    required this.duration,
    required this.format,
    required this.certifications,
    required this.eligibility,
    required this.applicationProcess,
    required this.deadlines,
  });
}

class JobTraining extends StatelessWidget {
  final List<JobTrainingProgram> programs = [
    JobTrainingProgram(
      name: 'Tech Skills Development',
      description: 'Learn technical skills for the IT industry.',
      curriculum: 'Programming, Networking, Databases',
      duration: '6 months',
      format: 'Online',
      certifications: 'Certified IT Specialist',
      eligibility: 'Unemployed individuals, Graduates',
      applicationProcess: 'Apply online by submitting your resume.',
      deadlines: 'June 30, 2024',
    ),
    // Add more programs here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Training Programs'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Search for job training programs...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: programs.length,
              itemBuilder: (context, index) {
                final program = programs[index];
                return Card(
                  child: ListTile(
                    title: Text(program.name),
                    subtitle: Text(program.description),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => ProgramDetailsSheet(program: program),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProgramDetailsSheet extends StatelessWidget {
  final JobTrainingProgram program;

  ProgramDetailsSheet({required this.program});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(program.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Description: ${program.description}'),
            Text('Curriculum: ${program.curriculum}'),
            Text('Duration: ${program.duration}'),
            Text('Format: ${program.format}'),
            Text('Certifications: ${program.certifications}'),
            Text('Eligibility: ${program.eligibility}'),
            Text('Application Process: ${program.applicationProcess}'),
            Text('Deadlines: ${program.deadlines}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ApplicationFormPage(program: program),
                  ),
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

class ApplicationFormPage extends StatelessWidget {
  final JobTrainingProgram program;

  ApplicationFormPage({required this.program});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String fullName = '';
    String contactInfo = '';
    String employmentStatus = '';
    String educationalBackground = '';
    String supportingDocuments = '';

    return Scaffold(
      appBar: AppBar(
        title: Text('Apply for ${program.name}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name'),
                onSaved: (value) => fullName = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact Information (Email, Phone)'),
                onSaved: (value) => contactInfo = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Employment Status'),
                onSaved: (value) => employmentStatus = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Educational Background'),
                onSaved: (value) => educationalBackground = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Supporting Documents (IDs, Resume)'),
                onSaved: (value) => supportingDocuments = value!,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Process the application
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

