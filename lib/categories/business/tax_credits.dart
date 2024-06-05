import 'package:flutter/material.dart';


class TaxCredits extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Tax Credits'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Business Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Business Type'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description of Activities'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Amount Invested / Number of Jobs Created'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Contact Information'),
              ),
              const SizedBox(height: 20),
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
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              // Process data.
              Navigator.of(context).pop();
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
