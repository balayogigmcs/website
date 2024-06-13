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

class BusinessDevelopment extends StatefulWidget {
  @override
  _BusinessDevelopmentState createState() => _BusinessDevelopmentState();
}

class _BusinessDevelopmentState extends State<BusinessDevelopment> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _businessTypeController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _currentStageController = TextEditingController();
  final TextEditingController _contactInfoController = TextEditingController();

  Future<void> _saveBusinessDevelopmentInformation() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('business_development').add({
        'business_name': _businessNameController.text,
        'business_type': _businessTypeController.text,
        'description': _descriptionController.text,
        'current_stage': _currentStageController.text,
        'contact_info': _contactInfoController.text,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Business Development Services'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              LabeledTextFormField(
                labelText: 'Business Name',
                controller: _businessNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your business name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Business Type',
                controller: _businessTypeController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your business type';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Description of Service Needed',
                controller: _descriptionController,
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Current Stage of Business Development',
                controller: _currentStageController,
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Contact Information',
                controller: _contactInfoController,
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              await _saveBusinessDevelopmentInformation();
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Form submitted')),
              );
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
