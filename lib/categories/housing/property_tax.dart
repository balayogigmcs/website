import 'package:flutter/material.dart';


class PropertyTax extends StatefulWidget {
  @override
  _PropertyTaxState createState() => _PropertyTaxState();
}

class _PropertyTaxState extends State<PropertyTax> {
  final _formKey = GlobalKey<FormState>();
  String propertyAddress = '';
  String proofOfOwnership = '';
  String proofOfResidency = '';
  String ageVerification = '';
  String incomeDocumentation = '';
  String disabilityDocumentation = '';
  String veteranStatusProof = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homestead Exemption Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Property Address'),
                onChanged: (value) {
                  setState(() {
                    propertyAddress = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your property address';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Proof of Ownership'),
                onChanged: (value) {
                  setState(() {
                    proofOfOwnership = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please provide proof of ownership';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Proof of Residency'),
                onChanged: (value) {
                  setState(() {
                    proofOfResidency = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please provide proof of residency';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Age Verification'),
                onChanged: (value) {
                  setState(() {
                    ageVerification = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please provide age verification';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Income Documentation'),
                onChanged: (value) {
                  setState(() {
                    incomeDocumentation = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please provide income documentation';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Disability Documentation'),
                onChanged: (value) {
                  setState(() {
                    disabilityDocumentation = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please provide disability documentation';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Veteran Status Proof'),
                onChanged: (value) {
                  setState(() {
                    veteranStatusProof = value;
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please provide veteran status proof';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process the data
                    print('Form submitted successfully');
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
