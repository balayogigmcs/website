import 'package:flutter/material.dart';



class CommunityRevitalization extends StatefulWidget {
  @override
  _CommunityRevitalizationState createState() =>
      _CommunityRevitalizationState();
}

class _CommunityRevitalizationState
    extends State<CommunityRevitalization> {
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
                  _buildNeighborhoodRedevelopmentForm(),
                ],
              ),
              ExpansionTile(
                title: Text('Historic Preservation'),
                children: <Widget>[
                  _buildHistoricPreservationForm(),
                ],
              ),
              ExpansionTile(
                title: Text('Community Gardens and Green Spaces'),
                children: <Widget>[
                  _buildCommunityGardensForm(),
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

  Widget _buildNeighborhoodRedevelopmentForm() {
    return Column(
      children: <Widget>[
        _buildTextField('Project Name'),
        _buildDropdownField('Project Type',
            ['Mixed-Use Development', 'Affordable Housing', 'Commercial Revitalization']),
        _buildTextField('Project Description'),
        _buildTextField('Location'),
        _buildTextField('Estimated Cost'),
        _buildTextField('Funding Sources'),
        _buildTextField('Project Timeline'),
        _buildTextField('Key Stakeholders'),
        _buildTextField('Contact Information'),
        _buildFileUploadField('Upload Project Documents'),
      ],
    );
  }

  Widget _buildHistoricPreservationForm() {
    return Column(
      children: <Widget>[
        _buildTextField('Project Name'),
        _buildDropdownField('Type of Preservation', ['Landmarks', 'Buildings', 'Cultural Sites']),
        _buildTextField('Project Description'),
        _buildTextField('Location'),
        _buildTextField('Estimated Cost'),
        _buildTextField('Funding Sources'),
        _buildTextField('Project Timeline'),
        _buildTextField('Key Stakeholders'),
        _buildTextField('Contact Information'),
        _buildFileUploadField('Upload Project Documents'),
      ],
    );
  }

  Widget _buildCommunityGardensForm() {
    return Column(
      children: <Widget>[
        _buildTextField('Project Name'),
        _buildDropdownField('Project Type',
            ['Urban Agriculture', 'Community Gardening', 'Parks Development']),
        _buildTextField('Project Description'),
        _buildTextField('Location'),
        _buildTextField('Estimated Cost'),
        _buildTextField('Funding Sources'),
        _buildTextField('Project Timeline'),
        _buildTextField('Key Stakeholders'),
        _buildTextField('Contact Information'),
        _buildFileUploadField('Upload Project Documents'),
      ],
    );
  }

  Widget _buildSuccessStoriesSection() {
    return Column(
      children: <Widget>[
        Text(
          'Success Stories and Testimonials',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        _buildTextField('Story Title'),
        _buildTextField('Description'),
        _buildFileUploadField('Upload Images and Videos'),
        _buildTextField('Testimonial Text'),
        _buildTextField('Name'),
        _buildTextField('Role'),
        _buildFileUploadField('Upload Photo'),
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
        _buildTextField('Project Updates'),
        _buildTextField('Milestones'),
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
        _buildTextField('Name'),
        _buildTextField('Email'),
        _buildDropdownField('Inquiry Type', ['Feedback', 'Project Information', 'Volunteering']),
        _buildTextField('Message'),
      ],
    );
  }

  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
      ),
    );
  }

  Widget _buildDropdownField(String label, List<String> options) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: label,
        ),
        items: options.map((String option) {
          return DropdownMenuItem(
            value: option,
            child: Text(option),
          );
        }).toList(),
        onChanged: (newValue) {},
      ),
    );
  }

  Widget _buildFileUploadField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () {
          // Implement file upload functionality here
        },
        child: Text(label),
      ),
    );
  }
}
