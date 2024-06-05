import 'package:flutter/material.dart';


class BusinessDevelopment extends StatefulWidget {

  BusinessDevelopment();

  @override
  _BusinessDevelopmentState createState() => _BusinessDevelopmentState();
}

class _BusinessDevelopmentState extends State<BusinessDevelopment> {
  final _formKey = GlobalKey<FormState>();
  String businessName = '';
  String businessType = '';
  String description = '';
  String currentStage = '';
  String contactInfo = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Business Developnment Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Business Name'),
                onSaved: (value) {
                  businessName = value ?? '';
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Business Type'),
                onSaved: (value) {
                  businessType = value ?? '';
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Description of Service Needed'),
                onSaved: (value) {
                  description = value ?? '';
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Current Stage of Business Development'),
                onSaved: (value) {
                  currentStage = value ?? '';
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact Information'),
                onSaved: (value) {
                  contactInfo = value ?? '';
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Process the data
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Form submitted')),
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
}
