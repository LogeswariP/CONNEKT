import 'package:flutter/material.dart';
import 'package:ganesh/tomato/nlogin.dart';

void main() {
  runApp(SignUp());
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Up Page',
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String _selectedLabelType = 'Society'; // Default selected label type

  // Text editing controllers for text fields
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _placeController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _bankDetailsController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // Function to handle submit button press
  void _submit() {
    String name = _nameController.text.trim();
    String email = _emailController.text.trim();
    String place = _placeController.text.trim();
    String contact = _contactController.text.trim();
    String bankDetails = _bankDetailsController.text.trim();
    String password = _passwordController.text.trim();
    // Here you can implement your sign-up logic
    print('Name: $name');
    print('Email: $email');
    print('Label Type: $_selectedLabelType');
    print('Place: $place');
    print('Contact: $contact');
    print('Bank Details: $bankDetails');
    print('Password: $password');

    // Navigate back to the login page
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginApp()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _placeController,
                decoration: InputDecoration(
                  labelText: 'Place',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _contactController,
                decoration: InputDecoration(
                  labelText: 'Contact',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _bankDetailsController,
                decoration: InputDecoration(
                  labelText: 'Bank Details',
                ),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                value: _selectedLabelType,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLabelType = newValue!;
                  });
                },
                items: <String>[
                  'Society',
                  'Distributor',
                  'Retailer',
                  'Customer'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Type',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submit,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
