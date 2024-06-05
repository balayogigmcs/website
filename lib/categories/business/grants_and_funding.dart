import 'package:flutter/material.dart';


class GrantsAndFunding extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grants and Funding'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Business Name'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Business Type'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Purpose of the Grant'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Amount Requested'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Business Plan or Proposal Summary'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact Information'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process data.
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
