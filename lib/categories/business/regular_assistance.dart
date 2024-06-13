import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LabeledTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final int maxLines;

  LabeledTextFormField({
    Key? key,
    required this.labelText,
    required this.controller,
    this.validator,
    this.maxLines = 1,
  }) : super(key: key);

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
          maxLines: maxLines,
        ),
      ],
    );
  }
}

class RegulatoryAssistance extends StatefulWidget {
  RegulatoryAssistance({Key? key}) : super(key: key);

  @override
  _RegulatoryAssistanceState createState() => _RegulatoryAssistanceState();
}

class _RegulatoryAssistanceState extends State<RegulatoryAssistance> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _businessTypeController = TextEditingController();
  final TextEditingController _regulatoryNeedsController =
      TextEditingController();
  final TextEditingController _complianceIssuesController =
      TextEditingController();
  final TextEditingController _contactInfoController = TextEditingController();
  String _selectedCategory = 'Permitting Assistance';

  Future<void> _saveRegulatoryAssistance() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('regulatory_assistance').add({
        'category': _selectedCategory,
        'business_name': _businessNameController.text,
        'business_type': _businessTypeController.text,
        'regulatory_needs': _regulatoryNeedsController.text,
        'compliance_issues': _complianceIssuesController.text,
        'contact_info': _contactInfoController.text,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Regulatory Assistance Form'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DropdownButtonFormField(
                value: _selectedCategory,
                items: [
                  DropdownMenuItem(
                      child: Text('Permitting Assistance'),
                      value: 'Permitting Assistance'),
                  DropdownMenuItem(
                      child: Text('Compliance Assistance'),
                      value: 'Compliance Assistance'),
                  DropdownMenuItem(
                      child: Text('Business Licensing Support'),
                      value: 'Business Licensing Support'),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value.toString();
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Select Category',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
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
                labelText: 'Regulatory Needs',
                controller: _regulatoryNeedsController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please describe your regulatory needs';
                  }
                  return null;
                },
                maxLines: 3,
              ),
              SizedBox(height: 16.0),
              LabeledTextFormField(
                labelText: 'Compliance Issues or Questions',
                controller: _complianceIssuesController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please describe any compliance issues or questions';
                  }
                  return null;
                },
                maxLines: 3,
              ),
              SizedBox(height: 16.0),
              LabeledTextFormField(
                labelText: 'Contact Information',
                controller: _contactInfoController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your contact information';
                  }
                  return null;
                },
              ),
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
              await _saveRegulatoryAssistance();
              Navigator.of(context).pop();
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
