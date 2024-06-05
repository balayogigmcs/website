import 'package:flutter/material.dart';


class LandManagementDashboard extends StatefulWidget {
  @override
  _LandManagementDashboardState createState() => _LandManagementDashboardState();
}

class _LandManagementDashboardState extends State<LandManagementDashboard> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    DashboardPage(),
    LandParcelsPage(),
    AddParcelPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Land Management System'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Parcels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Parcel',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Overview',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            OverviewCard(title: 'Total Land Parcels', value: '150'),
            OverviewCard(title: 'Available Land', value: '75'),
            OverviewCard(title: 'Under Development', value: '50'),
            OverviewCard(title: 'Recently Sold', value: '25'),
            SizedBox(height: 16),
            Text(
              'Map View',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 300,
              color: Colors.grey[300],
              child: Center(child: Text('Interactive Map Placeholder')),
            ),
          ],
        ),
      ),
    );
  }
}

class OverviewCard extends StatelessWidget {
  final String title;
  final String value;

  OverviewCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title),
        trailing: Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class LandParcelsPage extends StatelessWidget {
  final List<Map<String, String>> parcels = [
    {'Parcel Number': '001', 'Owner Name': 'John Doe', 'Location': 'NY', 'Size': '5 acres', 'Status': 'Available'},
    {'Parcel Number': '002', 'Owner Name': 'Jane Smith', 'Location': 'CA', 'Size': '10 acres', 'Status': 'Sold'},
    // Add more parcels here
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Search',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: parcels.length,
              itemBuilder: (context, index) {
                final parcel = parcels[index];
                return Card(
                  child: ListTile(
                    title: Text('Parcel Number: ${parcel['Parcel Number']}'),
                    subtitle: Text('Owner: ${parcel['Owner Name']}\nLocation: ${parcel['Location']}\nSize: ${parcel['Size']}\nStatus: ${parcel['Status']}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ParcelDetailsPage(parcel: parcel),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ParcelDetailsPage extends StatelessWidget {
  final Map<String, String> parcel;

  ParcelDetailsPage({required this.parcel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parcel Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('Parcel Number: ${parcel['Parcel Number']}', style: TextStyle(fontSize: 18)),
            Text('Owner Name: ${parcel['Owner Name']}', style: TextStyle(fontSize: 18)),
            Text('Location: ${parcel['Location']}', style: TextStyle(fontSize: 18)),
            Text('Size: ${parcel['Size']}', style: TextStyle(fontSize: 18)),
            Text('Status: ${parcel['Status']}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 16),
            Text('Current Land Use', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Description of current land use.'),
            SizedBox(height: 16),
            Text('Maintenance and Upkeep', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Details about maintenance schedules and activities.'),
            SizedBox(height: 16),
            Text('Lease and Rental Agreements', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Information on any leases or rental agreements.'),
            SizedBox(height: 16),
            Text('Documents', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            // Placeholder for documents
            SizedBox(height: 16),
            Text('History', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            // Placeholder for history
          ],
        ),
      ),
    );
  }
}

class AddParcelPage extends StatefulWidget {
  @override
  _AddParcelPageState createState() => _AddParcelPageState();
}

class _AddParcelPageState extends State<AddParcelPage> {
  final _formKey = GlobalKey<FormState>();

  String _parcelNumber = '';
  String _ownerName = '';
  String _location = '';
  String _size = '';
  String _zoning = '';
  String _status = 'Available';
  String _currentLandUse = '';
  String _maintenance = '';
  String _lease = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Parcel'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Parcel Number'),
                  onSaved: (value) => _parcelNumber = value ?? '',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter parcel number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Owner Name'),
                  onSaved: (value) => _ownerName = value ?? '',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter owner name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Location'),
                  onSaved: (value) => _location = value ?? '',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter location';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Size'),
                  onSaved: (value) => _size = value ?? '',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter size';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Zoning'),
                  onSaved: (value) => _zoning = value ?? '',
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Current Land Use'),
                  onSaved: (value) => _currentLandUse = value ?? '',
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Maintenance and Upkeep'),
                  onSaved: (value) => _maintenance = value ?? '',
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Lease and Rental Agreements'),
                  onSaved: (value) => _lease = value ?? '',
                ),
                DropdownButtonFormField<String>(
                  value: _status,
                  decoration: InputDecoration(labelText: 'Status'),
                  items: ['Available', 'Under Development', 'Sold']
                      .map((label) => DropdownMenuItem(
                    child: Text(label),
                    value: label,
                  ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _status = value!;
                    });
                  },
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Handle form submission (e.g., save data to database)
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Parcel Added')),
                      );
                    }
                  },
                  child: Text('Add Parcel'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
