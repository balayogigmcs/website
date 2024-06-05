import 'package:flutter/material.dart';


class Neighbourhood extends StatelessWidget {
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FacadeImprovementForm()),
              );
            },
          ),
          ListTile(
            title: Text('Safety and Security Initiatives'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SafetySecurityForm()),
              );
            },
          ),
          ListTile(
            title: Text('Community Engagement Projects'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CommunityEngagementForm()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class FacadeImprovementForm extends StatefulWidget {
  @override
  _FacadeImprovementFormState createState() => _FacadeImprovementFormState();
}

class _FacadeImprovementFormState extends State<FacadeImprovementForm> {
  final _formKey = GlobalKey<FormState>();
  String _propertyOwnerName = '';
  String _propertyAddress = '';
  String _improvementType = 'Facade Renovation';
  String _projectDescription = '';
  String _estimatedCost = '';
  String _timeline = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facade Improvement Grants'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Property Owner Name'),
                onChanged: (value) {
                  setState(() {
                    _propertyOwnerName = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Property Address'),
                onChanged: (value) {
                  setState(() {
                    _propertyAddress = value;
                  });
                },
              ),
              DropdownButtonFormField(
                value: _improvementType,
                items: ['Facade Renovation', 'Signage Upgrade', 'Storefront Improvement']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _improvementType = value as String;
                  });
                },
                decoration: InputDecoration(labelText: 'Type of Improvement'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Description'),
                onChanged: (value) {
                  setState(() {
                    _projectDescription = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Estimated Cost'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _estimatedCost = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Timeline'),
                onChanged: (value) {
                  setState(() {
                    _timeline = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle form submission
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

class SafetySecurityForm extends StatefulWidget {
  @override
  _SafetySecurityFormState createState() => _SafetySecurityFormState();
}

class _SafetySecurityFormState extends State<SafetySecurityForm> {
  final _formKey = GlobalKey<FormState>();
  String _projectName = '';
  String _projectType = 'Neighborhood Watch';
  String _projectDescription = '';
  String _location = '';
  String _estimatedCost = '';
  String _timeline = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Safety and Security Initiatives'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Name'),
                onChanged: (value) {
                  setState(() {
                    _projectName = value;
                  });
                },
              ),
              DropdownButtonFormField(
                value: _projectType,
                items: ['Neighborhood Watch', 'Lighting Improvements', 'Crime Prevention']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _projectType = value as String;
                  });
                },
                decoration: InputDecoration(labelText: 'Project Type'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Description'),
                onChanged: (value) {
                  setState(() {
                    _projectDescription = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Location'),
                onChanged: (value) {
                  setState(() {
                    _location = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Estimated Cost'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _estimatedCost = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Timeline'),
                onChanged: (value) {
                  setState(() {
                    _timeline = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle form submission
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

class CommunityEngagementForm extends StatefulWidget {
  @override
  _CommunityEngagementFormState createState() => _CommunityEngagementFormState();
}

class _CommunityEngagementFormState extends State<CommunityEngagementForm> {
  final _formKey = GlobalKey<FormState>();
  String _projectName = '';
  String _projectType = 'Community Events';
  String _projectDescription = '';
  String _location = '';
  String _estimatedCost = '';
  String _timeline = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Engagement Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Name'),
                onChanged: (value) {
                  setState(() {
                    _projectName = value;
                  });
                },
              ),
              DropdownButtonFormField(
                value: _projectType,
                items: ['Community Events', 'Beautification Projects', 'Cultural Celebrations']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _projectType = value as String;
                  });
                },
                decoration: InputDecoration(labelText: 'Project Type'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Description'),
                onChanged: (value) {
                  setState(() {
                    _projectDescription = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Location'),
                onChanged: (value) {
                  setState(() {
                    _location = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Estimated Cost'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _estimatedCost = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Timeline'),
                onChanged: (value) {
                  setState(() {
                    _timeline = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle form submission
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
