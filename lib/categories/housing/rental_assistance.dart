import 'package:flutter/material.dart';

class RentalAssistance extends StatefulWidget {
  @override
  _RentalAssistanceState createState() => _RentalAssistanceState();
}

class _RentalAssistanceState extends State<RentalAssistance> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Section8Form(),
    LIHTCForm(),
    EmergencyRentalAssistanceForm(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Housing Programs')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Section 8',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'LIHTC',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Emergency Assistance',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class Section8Form extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _householdIncomeController = TextEditingController();
  final TextEditingController _householdSizeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              controller: _householdIncomeController,
              decoration: InputDecoration(labelText: 'Household Income'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your household income';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _householdSizeController,
              decoration: InputDecoration(labelText: 'Household Size'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your household size';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Process data
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class LIHTCForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _incomeController = TextEditingController();
  final TextEditingController _propertyAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              controller: _incomeController,
              decoration: InputDecoration(labelText: 'Household Income'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your household income';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _propertyAddressController,
              decoration: InputDecoration(labelText: 'Property Address'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the property address';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Process data
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

class EmergencyRentalAssistanceForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _reasonController = TextEditingController();
  final TextEditingController _currentRentController = TextEditingController();
  final TextEditingController _assistanceNeededController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              controller: _reasonController,
              decoration: InputDecoration(labelText: 'Reason for Assistance'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the reason for assistance';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _currentRentController,
              decoration: InputDecoration(labelText: 'Current Rent Amount'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the current rent amount';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _assistanceNeededController,
              decoration: InputDecoration(labelText: 'Amount of Assistance Needed'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the amount of assistance needed';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Process data
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
