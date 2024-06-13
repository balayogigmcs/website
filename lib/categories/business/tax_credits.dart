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

class TaxCredits extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _businessAddressController =
      TextEditingController();
  final TextEditingController _mailingAddressController =
      TextEditingController();
  final TextEditingController _einController = TextEditingController();
  final TextEditingController _businessTypeController = TextEditingController();
  final TextEditingController _registrationNumberController =
      TextEditingController();
  final TextEditingController _contactNameController = TextEditingController();
  final TextEditingController _contactPhoneController = TextEditingController();
  final TextEditingController _contactEmailController = TextEditingController();
  final TextEditingController _businessDescriptionController =
      TextEditingController();
  final TextEditingController _naicsCodeController = TextEditingController();
  final TextEditingController _dunsNumberController = TextEditingController();
  final TextEditingController _ownershipController = TextEditingController();

  Future<void> _saveBusinessInformation() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('business_information').add({
        'business_name': _businessNameController.text,
        'business_address': _businessAddressController.text,
        'mailing_address': _mailingAddressController.text,
        'ein': _einController.text,
        'business_type': _businessTypeController.text,
        'registration_number': _registrationNumberController.text,
        'contact_name': _contactNameController.text,
        'contact_phone': _contactPhoneController.text,
        'contact_email': _contactEmailController.text,
        'business_description': _businessDescriptionController.text,
        'naics_code': _naicsCodeController.text,
        'duns_number': _dunsNumberController.text,
        'ownership': _ownershipController.text,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      
      title: const Text('Business Information Form'),
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
                labelText: 'Business Address',
                controller: _businessAddressController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the business address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Mailing Address',
                controller: _mailingAddressController,
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'EIN',
                controller: _einController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the EIN';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Business Type',
                controller: _businessTypeController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the business type';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'State Business Registration Number',
                controller: _registrationNumberController,
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Primary Contact Name',
                controller: _contactNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the primary contact name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Primary Contact Phone',
                controller: _contactPhoneController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the primary contact phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Primary Contact Email',
                controller: _contactEmailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Business Description',
                controller: _businessDescriptionController,
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'NAICS Code',
                controller: _naicsCodeController,
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'D-U-N-S Number',
                controller: _dunsNumberController,
              ),
              SizedBox(height: 16.0),

              LabeledTextFormField(
                labelText: 'Ownership Details',
                controller: _ownershipController,
                validator: (value) {
                  // Additional validation if needed
                  return null;
                },
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
              await _saveBusinessInformation();
              Navigator.of(context).pop();
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
