import 'package:flutter/material.dart';



class RegulatoryAssistance extends StatefulWidget {
  @override
  _RegulatoryAssistanceState createState() => _RegulatoryAssistanceState();
}

class _RegulatoryAssistanceState extends State<RegulatoryAssistance> {
  final _formKey = GlobalKey<FormState>();
  String _businessName = '';
  String _businessType = '';
  String _regulatoryNeeds = '';
  String _complianceIssues = '';
  String _contactInfo = '';
  String _selectedCategory = 'Permitting Assistance';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Regulatory Assistance'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              DropdownButtonFormField(
                value: _selectedCategory,
                items: [
                  DropdownMenuItem(child: Text('Permitting Assistance'), value: 'Permitting Assistance'),
                  DropdownMenuItem(child: Text('Compliance Assistance'), value: 'Compliance Assistance'),
                  DropdownMenuItem(child: Text('Business Licensing Support'), value: 'Business Licensing Support'),
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
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Business Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your business name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _businessName = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Business Type',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your business type';
                  }
                  return null;
                },
                onSaved: (value) {
                  _businessType = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Regulatory Needs',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please describe your regulatory needs';
                  }
                  return null;
                },
                onSaved: (value) {
                  _regulatoryNeeds = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Compliance Issues or Questions',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please describe any compliance issues or questions';
                  }
                  return null;
                },
                onSaved: (value) {
                  _complianceIssues = value!;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Contact Information',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your contact information';
                  }
                  return null;
                },
                onSaved: (value) {
                  _contactInfo = value!;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Here, you can handle form submission (e.g., send data to a server or display a success message)
                    print('Business Name: $_businessName');
                    print('Business Type: $_businessType');
                    print('Regulatory Needs: $_regulatoryNeeds');
                    print('Compliance Issues: $_complianceIssues');
                    print('Contact Information: $_contactInfo');
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
