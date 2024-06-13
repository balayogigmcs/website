import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

class CommunityRevitalization extends StatefulWidget {
  @override
  _CommunityRevitalizationState createState() => _CommunityRevitalizationState();
}

class _CommunityRevitalizationState extends State<CommunityRevitalization> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _projectNameController = TextEditingController();
  final TextEditingController _projectTypeController = TextEditingController();
  final TextEditingController _projectDescriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _estimatedCostController = TextEditingController();
  final TextEditingController _fundingSourcesController = TextEditingController();
  final TextEditingController _projectTimelineController = TextEditingController();
  final TextEditingController _keyStakeholdersController = TextEditingController();
  final TextEditingController _contactInformationController = TextEditingController();

  Future<void> _saveCommunityRevitalizationInformation(String collection) async {
    if (_formKey.currentState!.validate()) {
      await FirebaseFirestore.instance.collection(collection).add({
        'project_name': _projectNameController.text,
        'project_type': _projectTypeController.text,
        'project_description': _projectDescriptionController.text,
        'location': _locationController.text,
        'estimated_cost': _estimatedCostController.text,
        'funding_sources': _fundingSourcesController.text,
        'project_timeline': _projectTimelineController.text,
        'key_stakeholders': _keyStakeholdersController.text,
        'contact_information': _contactInformationController.text,
      });
    }
  }

  void _showFormDialog(String title, String collection) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: Form(
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
                        return 'Please enter the project name';
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
                  ),
                  SizedBox(height: 16.0),
                  LabeledTextFormField(
                    labelText: 'Location',
                    controller: _locationController,
                  ),
                  SizedBox(height: 16.0),
                  LabeledTextFormField(
                    labelText: 'Estimated Cost',
                    controller: _estimatedCostController,
                  ),
                  SizedBox(height: 16.0),
                  LabeledTextFormField(
                    labelText: 'Funding Sources',
                    controller: _fundingSourcesController,
                  ),
                  SizedBox(height: 16.0),
                  LabeledTextFormField(
                    labelText: 'Project Timeline',
                    controller: _projectTimelineController,
                  ),
                  SizedBox(height: 16.0),
                  LabeledTextFormField(
                    labelText: 'Key Stakeholders',
                    controller: _keyStakeholdersController,
                  ),
                  SizedBox(height: 16.0),
                  LabeledTextFormField(
                    labelText: 'Contact Information',
                    controller: _contactInformationController,
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
                  await _saveCommunityRevitalizationInformation(collection);
                  Navigator.of(context).pop();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Form submitted')),
                  );
                }
              },
              child: const Text('Submit'),
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
        title: Text('Community Revitalization Programs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              ExpansionTile(
                title: Text('Neighborhood Redevelopment'),
                children: <Widget>[
                  ListTile(
                    title: Text('Fill out the form'),
                    onTap: () {
                      _showFormDialog('Neighborhood Redevelopment', 'neighborhood_redevelopment');
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Historic Preservation'),
                children: <Widget>[
                  ListTile(
                    title: Text('Fill out the form'),
                    onTap: () {
                      _showFormDialog('Historic Preservation', 'historic_preservation');
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Community Gardens and Green Spaces'),
                children: <Widget>[
                  ListTile(
                    title: Text('Fill out the form'),
                    onTap: () {
                      _showFormDialog('Community Gardens and Green Spaces', 'community_gardens');
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              _buildSuccessStoriesSection(),
              _buildInteractiveMapsSection(),
              _buildProgressTrackersSection(),
              _buildCommunityFeedbackSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSuccessStoriesSection() {
    return Column(
      children: <Widget>[
        Text(
          'Success Stories and Testimonials',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        LabeledTextFormField(
          labelText: 'Story Title',
          controller: TextEditingController(),
        ),
        SizedBox(height: 16.0),
        LabeledTextFormField(
          labelText: 'Description',
          controller: TextEditingController(),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Implement file upload functionality here
          },
          child: Text('Upload Images and Videos'),
        ),
        SizedBox(height: 16.0),
        LabeledTextFormField(
          labelText: 'Testimonial Text',
          controller: TextEditingController(),
        ),
        SizedBox(height: 16.0),
        LabeledTextFormField(
          labelText: 'Name',
          controller: TextEditingController(),
        ),
        SizedBox(height: 16.0),
        LabeledTextFormField(
          labelText: 'Role',
          controller: TextEditingController(),
        ),
        SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Implement file upload functionality here
          },
          child: Text('Upload Photo'),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildInteractiveMapsSection() {
    return Column(
      children: <Widget>[
        Text(
          'Interactive Maps',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 200,
          color: Colors.grey,
          child: Center(child: Text('Map Integration Here')),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildProgressTrackersSection() {
    return Column(
      children: <Widget>[
        Text(
          'Progress Trackers',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        LinearProgressIndicator(value: 0.5),
        SizedBox(height: 16.0),
        LabeledTextFormField(
          labelText: 'Project Updates',
          controller: TextEditingController(),
        ),
        SizedBox(height: 16.0),
        LabeledTextFormField(
          labelText: 'Milestones',
          controller: TextEditingController(),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildCommunityFeedbackSection() {
    return Column(
      children: <Widget>[
        Text(
          'Community Feedback and Inquiries',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        LabeledTextFormField(
          labelText: 'Name',
          controller: TextEditingController(),
        ),
        SizedBox(height: 16.0),
        LabeledTextFormField(
          labelText: 'Email',
          controller: TextEditingController(),
        ),
        SizedBox(height: 16.0),
        LabeledTextFormField(
          labelText: 'Inquiry Type',
          controller: TextEditingController(),
        ),
        SizedBox(height: 16.0),
        LabeledTextFormField(
          labelText: 'Message',
          controller: TextEditingController(),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
