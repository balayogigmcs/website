import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LabeledTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final int maxLines;

  LabeledTextFormField({
    required this.labelText,
    required this.controller,
    this.validator,
    this.maxLines = 1,
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
          maxLines: maxLines,
        ),
      ],
    );
  }
}

class GrantsAndFunding extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _businessTypeController = TextEditingController();
  final TextEditingController _purposeController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _planController = TextEditingController();
  final TextEditingController _contactInfoController = TextEditingController();

  Future<void> _saveGrantsAndFunding() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('grants_and_funding').add({
        'business_name': _businessNameController.text,
        'business_type': _businessTypeController.text,
        'purpose': _purposeController.text,
        'amount_requested': _amountController.text,
        'business_plan': _planController.text,
        'contact_info': _contactInfoController.text,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Grants and Funding'),
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
                labelText: 'Purpose of the Grant',
                controller: _purposeController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please describe the purpose of the grant';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              LabeledTextFormField(
                labelText: 'Amount Requested',
                controller: _amountController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the amount requested';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              LabeledTextFormField(
                labelText: 'Business Plan or Proposal Summary',
                controller: _planController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please provide a summary of your business plan or proposal';
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
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              await _saveGrantsAndFunding();
              Navigator.of(context).pop();
            }
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}
