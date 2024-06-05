import 'package:flutter/material.dart';



class InfrastructureProjects extends StatelessWidget {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoadsAndTransportationForm()),
                );
              },
              child: Text('Roads and Transportation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UtilitiesForm()),
                );
              },
              child: Text('Utilities and Public Services'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DigitalInfrastructureForm()),
                );
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Roads and Transportation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter project name';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Project Type'),
                items: [
                  DropdownMenuItem(child: Text('Road Widening'), value: 'Road Widening'),
                  DropdownMenuItem(child: Text('Bridge Repair'), value: 'Bridge Repair'),
                  DropdownMenuItem(child: Text('Bike Lanes'), value: 'Bike Lanes'),
                  DropdownMenuItem(child: Text('Public Transit Enhancements'), value: 'Public Transit Enhancements'),
                ],
                onChanged: (value) {},
                validator: (value) {
                  if (value == null) {
                    return 'Please select a project type';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Description'),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter project description';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Location'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter location';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Estimated Cost'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter estimated cost';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Timeline'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter timeline';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact Information'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter contact information';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
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

class UtilitiesForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Utilities and Public Services'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter project name';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Utility Type'),
                items: [
                  DropdownMenuItem(child: Text('Water'), value: 'Water'),
                  DropdownMenuItem(child: Text('Sewer'), value: 'Sewer'),
                  DropdownMenuItem(child: Text('Electricity'), value: 'Electricity'),
                  DropdownMenuItem(child: Text('Waste Management'), value: 'Waste Management'),
                  DropdownMenuItem(child: Text('Recycling Programs'), value: 'Recycling Programs'),
                  DropdownMenuItem(child: Text('Public Parks Maintenance'), value: 'Public Parks Maintenance'),
                ],
                onChanged: (value) {},
                validator: (value) {
                  if (value == null) {
                    return 'Please select a utility type';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Description'),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter project description';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Location'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter location';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Estimated Cost'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter estimated cost';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Timeline'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter timeline';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact Information'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter contact information';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
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

class DigitalInfrastructureForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digital Infrastructure'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter project name';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField(
                decoration: InputDecoration(labelText: 'Project Type'),
                items: [
                  DropdownMenuItem(child: Text('Broadband Access'), value: 'Broadband Access'),
                  DropdownMenuItem(child: Text('Digital Literacy Programs'), value: 'Digital Literacy Programs'),
                ],
                onChanged: (value) {},
                validator: (value) {
                  if (value == null) {
                    return 'Please select a project type';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Project Description'),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter project description';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Targeted Community'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter targeted community';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Estimated Cost'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter estimated cost';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Timeline'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter timeline';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contact Information'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter contact information';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
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
