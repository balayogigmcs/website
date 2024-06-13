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

class InfrastructureProjects extends StatelessWidget {
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
        title: Text('Infrastructure Projects'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _showFormDialog(context, 'Roads and Transportation', RoadsAndTransportationForm());
              },
              child: Text('Roads and Transportation'),
            ),
            ElevatedButton(
              onPressed: () {
                _showFormDialog(context, 'Utilities and Public Services', UtilitiesForm());
              },
              child: Text('Utilities and Public Services'),
            ),
            ElevatedButton(
              onPressed: () {
                _showFormDialog(context, 'Digital Infrastructure', DigitalInfrastructureForm());
              },
              child: Text('Digital Infrastructure'),
            ),
          ],
        ),
      ),
    );
  }
}

class RoadsAndTransportationForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _projectNameController = TextEditingController();
  final TextEditingController _projectTypeController = TextEditingController();
  final TextEditingController _projectDescriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _estimatedCostController = TextEditingController();
  final TextEditingController _timelineController = TextEditingController();
  final TextEditingController _contactInformationController = TextEditingController();

  Future<void> _saveRoadsAndTransportationInformation() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('roads_transportation').add({
        'project_name': _projectNameController.text,
        'project_type': _projectTypeController.text,
        'project_description': _projectDescriptionController.text,
        'location': _locationController.text,
        'estimated_cost': _estimatedCostController.text,
        'timeline': _timelineController.text,
        'contact_information': _contactInformationController.text,
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
          LabeledTextFormField(
            labelText: 'Project Type',
            controller: _projectTypeController,
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
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Contact Information',
            controller: _contactInformationController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter contact information';
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _saveRoadsAndTransportationInformation();
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

class UtilitiesForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _projectNameController = TextEditingController();
  final TextEditingController _utilityTypeController = TextEditingController();
  final TextEditingController _projectDescriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _estimatedCostController = TextEditingController();
  final TextEditingController _timelineController = TextEditingController();
  final TextEditingController _contactInformationController = TextEditingController();

  Future<void> _saveUtilitiesInformation() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('utilities').add({
        'project_name': _projectNameController.text,
        'utility_type': _utilityTypeController.text,
        'project_description': _projectDescriptionController.text,
        'location': _locationController.text,
        'estimated_cost': _estimatedCostController.text,
        'timeline': _timelineController.text,
        'contact_information': _contactInformationController.text,
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
          LabeledTextFormField(
            labelText: 'Utility Type',
            controller: _utilityTypeController,
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
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Contact Information',
            controller: _contactInformationController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter contact information';
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _saveUtilitiesInformation();
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

class DigitalInfrastructureForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _projectNameController = TextEditingController();
  final TextEditingController _projectTypeController = TextEditingController();
  final TextEditingController _projectDescriptionController = TextEditingController();
  final TextEditingController _targetedCommunityController = TextEditingController();
  final TextEditingController _estimatedCostController = TextEditingController();
  final TextEditingController _timelineController = TextEditingController();
  final TextEditingController _contactInformationController = TextEditingController();

  Future<void> _saveDigitalInfrastructureInformation() async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection('digital_infrastructure').add({
        'project_name': _projectNameController.text,
        'project_type': _projectTypeController.text,
        'project_description': _projectDescriptionController.text,
        'targeted_community': _targetedCommunityController.text,
        'estimated_cost': _estimatedCostController.text,
        'timeline': _timelineController.text,
        'contact_information': _contactInformationController.text,
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
          LabeledTextFormField(
            labelText: 'Project Type',
            controller: _projectTypeController,
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
            labelText: 'Targeted Community',
            controller: _targetedCommunityController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter targeted community';
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
          SizedBox(height: 16.0),
          LabeledTextFormField(
            labelText: 'Contact Information',
            controller: _contactInformationController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter contact information';
              }
              return null;
            },
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _saveDigitalInfrastructureInformation();
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
