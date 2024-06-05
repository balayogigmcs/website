import 'package:flutter/material.dart';

class HousingInitiatives extends StatefulWidget {
  @override
  _HousingInitiativesState createState() => _HousingInitiativesState();
}

class _HousingInitiativesState extends State<HousingInitiatives>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Affordable Housing Initiatives'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Development'),
            Tab(text: 'Rent Subsidies'),
            Tab(text: 'Trust Funds'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          AffordableHousingDevelopmentForm(),
          RentSubsidiesForm(),
          AffordableHousingTrustFundsForm(),
        ],
      ),
    );
  }
}

class AffordableHousingDevelopmentForm extends StatefulWidget {
  @override
  _AffordableHousingDevelopmentFormState createState() =>
      _AffordableHousingDevelopmentFormState();
}

class _AffordableHousingDevelopmentFormState
    extends State<AffordableHousingDevelopmentForm> {
  final _formKey = GlobalKey<FormState>();
  String _housingSituation = 'Renting';
  int _householdSize = 1;
  int _householdIncome = 0;
  bool _hasSpecialNeeds = false;
  String _preferredLocation = '';
  String _name = '';
  String _email = '';
  String _phone = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Full Name'),
            onChanged: (value) {
              setState(() {
                _name = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
            onChanged: (value) {
              setState(() {
                _email = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Phone Number'),
            onChanged: (value) {
              setState(() {
                _phone = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(labelText: 'Current Housing Situation'),
            value: _housingSituation,
            onChanged: (value) {
              setState(() {
                _housingSituation = value!;
              });
            },
            items:
                ['Renting', 'Owning', 'Homeless', 'Living with Family/Friends']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Household Size'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                _householdSize = int.parse(value);
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter household size';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Household Income'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                _householdIncome = int.parse(value);
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter household income';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          CheckboxListTile(
            title: Text('Special Needs'),
            value: _hasSpecialNeeds,
            onChanged: (value) {
              setState(() {
                _hasSpecialNeeds = value!;
              });
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Preferred Location'),
            onChanged: (value) {
              setState(() {
                _preferredLocation = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter preferred location';
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Process data
                print('Form submitted');
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

// Similar forms for Rent Subsidies and Affordable Housing Trust Funds with improved styling

class RentSubsidiesForm extends StatefulWidget {
  @override
  _RentSubsidiesFormState createState() => _RentSubsidiesFormState();
}

class _RentSubsidiesFormState extends State<RentSubsidiesForm> {
  final _formKey = GlobalKey<FormState>();
  int _currentRent = 0;
  int _monthlyIncome = 0;
  String _employmentStatus = '';
  String _otherIncomeSources = '';
  String _reasonForAssistance = '';
  String _specificNeeds = '';
  String _name = '';
  String _email = '';
  String _phone = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Full Name'),
            onChanged: (value) {
              setState(() {
                _name = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
            onChanged: (value) {
              setState(() {
                _email = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Phone Number'),
            onChanged: (value) {
              setState(() {
                _phone = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Current Rent Amount'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                _currentRent = int.parse(value);
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter current rent amount';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Monthly Income'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                _monthlyIncome = int.parse(value);
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter monthly income';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Employment Status'),
            onChanged: (value) {
              setState(() {
                _employmentStatus = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter employment status';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Other Sources of Income'),
            onChanged: (value) {
              setState(() {
                _otherIncomeSources = value;
              });
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration:
                InputDecoration(labelText: 'Reason for Seeking Assistance'),
            onChanged: (value) {
              setState(() {
                _reasonForAssistance = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter reason for seeking assistance';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Specific Needs',
              hintText: 'Please describe any specific needs or circumstances',
            ),
            maxLines: 3,
            onChanged: (value) {
              setState(() {
                _specificNeeds = value;
              });
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Process data
                print('Form submitted');
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class AffordableHousingTrustFundsForm extends StatefulWidget {
  @override
  _AffordableHousingTrustFundsFormState createState() =>
      _AffordableHousingTrustFundsFormState();
}

class _AffordableHousingTrustFundsFormState
    extends State<AffordableHousingTrustFundsForm> {
  final _formKey = GlobalKey<FormState>();
  String _currentHousingStatus = '';
  int _incomeDetails = 0;
  String _locationPreference = '';
  String _specificNeeds = '';
  String _name = '';
  String _email = '';
  String _phone = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Full Name'),
            onChanged: (value) {
              setState(() {
                _name = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
            onChanged: (value) {
              setState(() {
                _email = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Phone Number'),
            onChanged: (value) {
              setState(() {
                _phone = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Current Housing Status'),
            onChanged: (value) {
              setState(() {
                _currentHousingStatus = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter current housing status';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Income Details'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                _incomeDetails = int.parse(value);
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter income details';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Location Preference'),
            onChanged: (value) {
              setState(() {
                _locationPreference = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter location preference';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Specific Needs',
              hintText: 'Please describe any specific needs or circumstances',
            ),
            maxLines: 3,
            onChanged: (value) {
              setState(() {
                _specificNeeds = value;
              });
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Process data
                print('Form submitted');
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
