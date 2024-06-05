import 'package:flutter/material.dart';



class HomeOwnership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homeownership Assistance'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DownPaymentAssistanceForm()),
                );
              },
              child: Text('Down Payment Assistance'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MortgageAssistanceForm()),
                );
              },
              child: Text('Mortgage Assistance'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomebuyerEducationForm()),
                );
              },
              child: Text('Homebuyer Education and Counseling'),
            ),
          ],
        ),
      ),
    );
  }
}

class DownPaymentAssistanceForm extends StatefulWidget {
  @override
  _DownPaymentAssistanceFormState createState() => _DownPaymentAssistanceFormState();
}

class _DownPaymentAssistanceFormState extends State<DownPaymentAssistanceForm> {
  final _formKey = GlobalKey<FormState>();

  // User data variables
  String fullName = '';
  String contactEmail = '';
  double savings = 0.0;
  double desiredHomePrice = 0.0;
  int creditScore = 0;
  bool isFirstTimeHomebuyer = false;
  double householdIncome = 0.0;
  int householdSize = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Down Payment Assistance'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                fullName = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your full name';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Contact Email',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                contactEmail = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your contact email';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Savings for Down Payment',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onSaved: (value) {
                savings = double.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your savings';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Desired Home Price Range',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onSaved: (value) {
                desiredHomePrice = double.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the desired home price range';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Credit Score',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onSaved: (value) {
                creditScore = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your credit score';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            SwitchListTile(
              title: Text('First-Time Homebuyer'),
              value: isFirstTimeHomebuyer,
              onChanged: (value) {
                setState(() {
                  isFirstTimeHomebuyer = value;
                });
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Household Income',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onSaved: (value) {
                householdIncome = double.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your household income';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Household Size',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onSaved: (value) {
                householdSize = int.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your household size';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Submit data to backend or display a success message
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

class MortgageAssistanceForm extends StatefulWidget {
  @override
  _MortgageAssistanceFormState createState() => _MortgageAssistanceFormState();
}

class _MortgageAssistanceFormState extends State<MortgageAssistanceForm> {
  final _formKey = GlobalKey<FormState>();

  // User data variables
  String fullName = '';
  String contactEmail = '';
  double currentMortgage = 0.0;
  double income = 0.0;
  String employmentStatus = '';
  String creditHistory = '';
  String assistanceType = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mortgage Assistance'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                fullName = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your full name';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Contact Email',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                contactEmail = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your contact email';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Current Mortgage Details',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onSaved: (value) {
                currentMortgage = double.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your current mortgage details';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Income',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onSaved: (value) {
                income = double.parse(value!);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your income';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Employment Status',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                employmentStatus = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your employment status';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Credit History',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                creditHistory = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your credit history';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Type of Mortgage Assistance Needed',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                assistanceType = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the type of mortgage assistance needed';
                }
                return null;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Submit data to backend or display a success message
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

class HomebuyerEducationForm extends StatefulWidget {
  @override
  _HomebuyerEducationFormState createState() => _HomebuyerEducationFormState();
}

class _HomebuyerEducationFormState extends State<HomebuyerEducationForm> {
  final _formKey = GlobalKey<FormState>();

  // User data variables
  String fullName = '';
  String contactEmail = '';
  String knowledgeLevel = '';
  String preferredLearningMethod = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homebuyer Education and Counseling'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                fullName = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your full name';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Contact Email',
                border: OutlineInputBorder(),
              ),
              onSaved: (value) {
                contactEmail = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your contact email';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Level of Homebuying Knowledge',
                border: OutlineInputBorder(),
              ),
              value: knowledgeLevel.isEmpty ? null : knowledgeLevel,
              items: ['Beginner', 'Intermediate', 'Advanced'].map((String category) {
                return DropdownMenuItem(value: category, child: Text(category));
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  knowledgeLevel = newValue!;
                });
              },
              onSaved: (newValue) {
                knowledgeLevel = newValue!;
              },
              validator: (value) => value == null ? 'Please select your knowledge level' : null,
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Preferred Method of Learning',
                border: OutlineInputBorder(),
              ),
              value: preferredLearningMethod.isEmpty ? null : preferredLearningMethod,
              items: ['Online Courses', 'In-Person Workshops', 'One-on-One Counseling']
                  .map((String category) {
                return DropdownMenuItem(value: category, child: Text(category));
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  preferredLearningMethod = newValue!;
                });
              },
              onSaved: (newValue) {
                preferredLearningMethod = newValue!;
              },
              validator: (value) => value == null ? 'Please select a learning method' : null,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // Submit data to backend or display a success message
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
