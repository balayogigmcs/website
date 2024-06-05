import 'package:flutter/material.dart';



class WaterManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Our Services'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          ServiceCard(
            title: 'Water Supply',
            description: 'Learn about our water supply and distribution services.',
            navigateTo: WaterSupplyScreen(),
          ),
          ServiceCard(
            title: 'Wastewater Management',
            description: 'Find out how we manage and treat wastewater.',
            navigateTo: WastewaterManagementScreen(),
          ),
          ServiceCard(
            title: 'Stormwater Management',
            description: 'Understand our stormwater management initiatives.',
            navigateTo: StormwaterManagementScreen(),
          ),
          ServiceCard(
            title: 'Water Quality',
            description: 'Check the quality of our water.',
            navigateTo: WaterQualityScreen(),
          ),
          ServiceCard(
            title: 'Customer Services',
            description: 'Get information about customer services.',
            navigateTo: CustomerServicesScreen(),
          ),
          ServiceCard(
            title: 'Projects and Initiatives',
            description: 'Learn about our ongoing projects and initiatives.',
            navigateTo: ProjectsScreen(),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final Widget navigateTo;

  ServiceCard({required this.title, required this.description, required this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigateTo),
          );
        },
      ),
    );
  }
}

class WaterSupplyScreen extends StatefulWidget {
  @override
  _WaterSupplyScreenState createState() => _WaterSupplyScreenState();
}

class _WaterSupplyScreenState extends State<WaterSupplyScreen> {
  final _formKey = GlobalKey<FormState>();
  final _sourceController = TextEditingController();
  final _usageController = TextEditingController();
  final _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Supply'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Water Supply',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Our water supply system ensures safe and reliable drinking water. We use advanced '
              'technologies and infrastructure to manage and distribute water efficiently. '
              'Learn more about our water sources, treatment processes, and distribution networks below.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20),
            Image.network('https://example.com/water_supply_image.jpg'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Learn More'),
            ),
            SizedBox(height: 30),
            Text(
              'Provide Your Water Supply Details:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: _sourceController,
                    decoration: InputDecoration(labelText: 'Water Source'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your water source';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _usageController,
                    decoration: InputDecoration(labelText: 'Daily Usage (liters)'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your daily usage';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _feedbackController,
                    decoration: InputDecoration(labelText: 'Feedback'),
                    maxLines: 4,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Process data
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WastewaterManagementScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _issueDescriptionController = TextEditingController();
  final _dateController = TextEditingController();
  final _waterUsageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wastewater Management'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Text(
                'Wastewater Management',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'We treat and manage wastewater to protect the environment and public health. Our state-of-the-art '
                'treatment plants and processes ensure that wastewater is treated to the highest standards before being '
                'discharged or reused. Learn more about our facilities, processes, and sustainability initiatives below.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 20),
              Image.network('https://example.com/wastewater_management_image.jpg'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Learn More'),
              ),
              SizedBox(height: 20),
              Text(
                'Report an Issue',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Address'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _issueDescriptionController,
                decoration: InputDecoration(labelText: 'Issue Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please describe the issue';
                  }
                  return null;
                },
                maxLines: 4,
              ),
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(labelText: 'Date of Issue'),
                keyboardType: TextInputType.datetime,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the date of the issue';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Text(
                'Submit Water Usage',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _waterUsageController,
                decoration: InputDecoration(labelText: 'Water Usage (gallons)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your water usage';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process data
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Text('Thank you for submitting the information.'),
                        );
                      },
                    );
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

class StormwaterManagementScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _projectNameController = TextEditingController();
  final _locationController = TextEditingController();
  final _startDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stormwater Management'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Stormwater Management',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Our stormwater management strategies mitigate flooding and improve water quality. We implement '
              'infrastructure projects, green initiatives, and community programs to manage stormwater effectively. '
              'Learn more about our projects, initiatives, and how you can help below.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20),
            Image.network('https://example.com/stormwater_management_image.jpg'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Learn More'),
            ),
            SizedBox(height: 20),
            Text(
              'Submit Your Stormwater Management Project',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    controller: _projectNameController,
                    decoration: InputDecoration(labelText: 'Project Name'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a project name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _locationController,
                    decoration: InputDecoration(labelText: 'Location'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a location';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _startDateController,
                    decoration: InputDecoration(labelText: 'Start Date'),
                    keyboardType: TextInputType.datetime,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a start date';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _endDateController,
                    decoration: InputDecoration(labelText: 'End Date'),
                    keyboardType: TextInputType.datetime,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an end date';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _descriptionController,
                    decoration: InputDecoration(labelText: 'Project Description'),
                    maxLines: 5,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a project description';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Save data
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class WaterQualityScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _contaminantController = TextEditingController();
  final _levelController = TextEditingController();
  final _sourceController = TextEditingController();
  final _sampleDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Quality'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Water Quality Monitoring',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Enter the water quality details below:',
                  style: TextStyle(fontSize: 16.0),
                ),
                TextFormField(
                  controller: _contaminantController,
                  decoration: InputDecoration(labelText: 'Contaminant'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a contaminant';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _levelController,
                  decoration: InputDecoration(labelText: 'Level (mg/L)'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a level';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _sourceController,
                  decoration: InputDecoration(labelText: 'Source of Sample'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the source of the sample';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _sampleDateController,
                  decoration: InputDecoration(labelText: 'Sample Date (YYYY-MM-DD)'),
                  keyboardType: TextInputType.datetime,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the sample date';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Save data
                      _saveWaterQualityData();
                    }
                  },
                  child: Text('Submit'),
                ),
                SizedBox(height: 20),
                Text(
                  'Our water quality is monitored regularly to ensure safety and compliance with health standards. '
                  'Learn more about our water quality monitoring programs and latest reports below.',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to water quality reports screen
                  },
                  child: Text('View Reports'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _saveWaterQualityData() {
    String contaminant = _contaminantController.text;
    String level = _levelController.text;
    String source = _sourceController.text;
    String sampleDate = _sampleDateController.text;

    // Save the data to a database or perform necessary actions

    print('Contaminant: $contaminant');
    print('Level: $level mg/L');
    print('Source: $source');
    print('Sample Date: $sampleDate');
  }
}


class CustomerServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Services'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Customer Services',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Our customer services team is here to help you with billing, payments, and support. '
              'Explore the different services we offer to assist our customers below.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Billing and Payments'),
              subtitle: Text('Information on how to pay your water bills.'),
              onTap: () {
                // Navigate to billing and payments screen
              },
            ),
            ListTile(
              leading: Icon(Icons.support),
              title: Text('Customer Support'),
              subtitle: Text('Get support and report issues.'),
              onTap: () {
                // Navigate to customer support screen
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Service Information'),
              subtitle: Text('Details about our services.'),
              onTap: () {
                // Navigate to service information screen
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects and Initiatives'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Projects and Initiatives',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'We undertake various projects and initiatives to improve our water infrastructure and services. '
              'Learn more about our ongoing projects, community initiatives, and future plans below.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.build),
              title: Text('Infrastructure Projects'),
              subtitle: Text('Details about our current infrastructure projects.'),
              onTap: () {
                // Navigate to infrastructure projects screen
              },
            ),
            ListTile(
              leading: Icon(Icons.eco),
              title: Text('Sustainability Initiatives'),
              subtitle: Text('Learn about our sustainability efforts.'),
              onTap: () {
                // Navigate to sustainability initiatives screen
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Community Programs'),
              subtitle: Text('Explore our community programs and how to get involved.'),
              onTap: () {
                // Navigate to community programs screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
