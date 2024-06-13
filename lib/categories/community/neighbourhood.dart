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

class Neighbourhood extends StatelessWidget {
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
        title: Text('Neighborhood Improvement Grants'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Facade Improvement Grants'),
            onTap: () {
              _showFormDialog(context, 'Facade Improvement Grants', FacadeImprovementForm());
            },
          ),
          ListTile(
            title: Text('Safety and Security Initiatives'),
            onTap: () {
              _showFormDialog(context, 'Safety and Security Initiatives', SafetySecurityForm());
            },
          ),
          ListTile(
            title: Text('Community Engagement Projects'),
            onTap: () {
              _showFormDialog(context, 'Community Engagement Projects', CommunityEngagementForm());
            },
          ),
        ],
      ),
    );
  }
}

class FacadeImprovementForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _propertyOwnerNameController = TextEditingController();
  final TextEditingController _propertyAddressController = TextEditingController();
  final TextEditingController _improvementTypeController = TextEditingController();
  final TextEditingController _projectDescriptionController = TextEditingController();
  final TextEditingController _estimatedCostController = TextEditingController();
  final TextEditingController _timelineController = TextEditingController();

  Future<void> _saveFacadeImprovementInformation() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('facade_improvement').add({
        'property_owner_name': _propertyOwnerNameController.text,
        'property_address': _propertyAddressController.text,
        'improvement_type': _improvementTypeController.text,
        'project_description': _projectDescriptionController.text,
        'estimated_cost': _estimatedCostController.text,
        'timeline': _timelineController.text,
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
            labelText: 'Property Owner Name',
            controller: _propertyOwnerNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter property owner name';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Property Address',
            controller: _propertyAddressController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter property address';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          DropdownButtonFormField<String>(
            value: 'Facade Renovation',
            items: ['Facade Renovation', 'Signage Upgrade', 'Storefront Improvement']
                .map((label) => DropdownMenuItem(
                      child: Text(label),
                      value: label,
                    ))
                .toList(),
            onChanged: (value) {
              _improvementTypeController.text = value!;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Type of Improvement',
            ),
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Project Description',
            controller: _projectDescriptionController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter project description';
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
                return 'Please enter estimated cost';
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
                return 'Please enter timeline';
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _saveFacadeImprovementInformation();
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

class SafetySecurityForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _projectNameController = TextEditingController();
  final TextEditingController _projectTypeController = TextEditingController();
  final TextEditingController _projectDescriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _estimatedCostController = TextEditingController();
  final TextEditingController _timelineController = TextEditingController();

  Future<void> _saveSafetySecurityInformation() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('safety_security').add({
        'project_name': _projectNameController.text,
        'project_type': _projectTypeController.text,
        'project_description': _projectDescriptionController.text,
        'location': _locationController.text,
        'estimated_cost': _estimatedCostController.text,
        'timeline': _timelineController.text,
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
            labelText: 'Project Name',
            controller: _projectNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter project name';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          DropdownButtonFormField<String>(
            value: 'Neighborhood Watch',
            items: ['Neighborhood Watch', 'Lighting Improvements', 'Crime Prevention']
                .map((label) => DropdownMenuItem(
                      child: Text(label),
                      value: label,
                    ))
                .toList(),
            onChanged: (value) {
              _projectTypeController.text = value!;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Project Type',
            ),
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Project Description',
            controller: _projectDescriptionController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter project description';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Location',
            controller: _locationController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter location';
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
                return 'Please enter estimated cost';
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
                return 'Please enter timeline';
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _saveSafetySecurityInformation();
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

class CommunityEngagementForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _projectNameController = TextEditingController();
  final TextEditingController _projectTypeController = TextEditingController();
  final TextEditingController _projectDescriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _estimatedCostController = TextEditingController();
  final TextEditingController _timelineController = TextEditingController();

  Future<void> _saveCommunityEngagementInformation() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('community_engagement').add({
        'project_name': _projectNameController.text,
        'project_type': _projectTypeController.text,
        'project_description': _projectDescriptionController.text,
        'location': _locationController.text,
        'estimated_cost': _estimatedCostController.text,
        'timeline': _timelineController.text,
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
            labelText: 'Project Name',
            controller: _projectNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter project name';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          DropdownButtonFormField<String>(
            value: 'Community Events',
            items: ['Community Events', 'Beautification Projects', 'Cultural Celebrations']
                .map((label) => DropdownMenuItem(
                      child: Text(label),
                      value: label,
                    ))
                .toList(),
            onChanged: (value) {
              _projectTypeController.text = value!;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Project Type',
            ),
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Project Description',
            controller: _projectDescriptionController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter project description';
              }
              return null;
            },
          ),
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Location',
            controller: _locationController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter location';
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
                return 'Please enter estimated cost';
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
                return 'Please enter timeline';
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _saveCommunityEngagementInformation();
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
