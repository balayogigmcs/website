import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LabeledTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  LabeledTextFormField({
    required this.labelText,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 8.0),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
          validator: validator,
        ),
      ],
    );
  }
}

class PublicSafety extends StatelessWidget {
  void _showFormDialog(BuildContext context, String title, Widget form) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(child: form),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Public Safety Initiatives'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Crime Prevention Programs'),
            onTap: () {
              _showFormDialog(
                context,
                'Crime Prevention Programs',
                ProgramForm(programType: 'Crime Prevention Programs'),
              );
            },
          ),
          ListTile(
            title: Text('Emergency Preparedness'),
            onTap: () {
              _showFormDialog(
                context,
                'Emergency Preparedness',
                ProgramForm(programType: 'Emergency Preparedness'),
              );
            },
          ),
          ListTile(
            title: Text('Community Policing and Engagement'),
            onTap: () {
              _showFormDialog(
                context,
                'Community Policing and Engagement',
                ProgramForm(programType: 'Community Policing and Engagement'),
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

  final TextEditingController _programNameController = TextEditingController();
  final TextEditingController _programDescriptionController = TextEditingController();
  final TextEditingController _targetAudienceController = TextEditingController();
  final TextEditingController _estimatedCostController = TextEditingController();
  final TextEditingController _timelineController = TextEditingController();
  final TextEditingController _contactInformationController = TextEditingController();

  Future<void> _saveProgramInformation() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('public_safety_programs').add({
        'program_type': programType,
        'program_name': _programNameController.text,
        'program_description': _programDescriptionController.text,
        'target_audience': _targetAudienceController.text,
        'estimated_cost': _estimatedCostController.text,
        'timeline': _timelineController.text,
        'contact_information': _contactInformationController.text,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          LabeledTextFormField(
            labelText: 'Program Name',
            controller: _programNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the program name';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Program Description',
            controller: _programDescriptionController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the program description';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Target Audience',
            controller: _targetAudienceController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the target audience';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Estimated Cost',
            controller: _estimatedCostController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the estimated cost';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Timeline',
            controller: _timelineController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the timeline';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Contact Information',
            controller: _contactInformationController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter the contact information';
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _saveProgramInformation();
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Form submitted')),
                );
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
