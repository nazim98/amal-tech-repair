import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../components/custom_button.dart';
import '../models/service_model.dart';

class EditServicePage extends StatefulWidget {
  final Service service;

  EditServicePage({required this.service});

  @override
  _EditServicePageState createState() => _EditServicePageState();
}

class _EditServicePageState extends State<EditServicePage> {
  final _formKey = GlobalKey<FormState>();
  String _serviceName = '';
  String _description = '';
  String _phoneNumber = '';
  String _emailAddress = '';
  String _location = '';
  double _price = 0.0;

  @override
  void initState() {
    super.initState();
    _serviceName = widget.service.title;
    _description = widget.service.description;
    _phoneNumber = widget.service.phoneNumber;
    _emailAddress = widget.service.emailAddress;
    _location = widget.service.location;
    _price = widget.service.price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Edit Service',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.red,
        elevation: 4,
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.redAccent, Colors.orangeAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            initialValue: _serviceName,
                            decoration: InputDecoration(
                              labelText: 'Service Name',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter the service name';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _serviceName = value!;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            initialValue: _description,
                            decoration: InputDecoration(
                              labelText: 'Description',
                            ),
                            maxLines: 3,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a description';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _description = value!;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            initialValue: _price.toString(),
                            decoration: InputDecoration(
                              labelText: 'Price',
                            ),
                            keyboardType:
                                TextInputType.numberWithOptions(decimal: true),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter the price';
                              }
                              // Check if the entered value is a valid number
                              if (double.tryParse(value) == null) {
                                return 'Please enter a valid number';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _price = double.parse(value!);
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            initialValue: _phoneNumber,
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                            ),
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter a phone number';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _phoneNumber = value!;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            initialValue: _emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value!.isEmpty || !value.contains('@')) {
                                return 'Please enter a valid email address';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _emailAddress = value!;
                            },
                          ),
                          SizedBox(height: 16.0),
                          TextFormField(
                            initialValue: _location,
                            decoration: InputDecoration(
                              labelText: 'Location',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter the location';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              _location = value!;
                            },
                          ),
                          SizedBox(height: 16.0),
                          CustomButton(
                            // Using the custom button widget
                            text: 'Update Service',
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState?.save();

                                try {
                                  // Update data in Firestore
                                  await FirebaseFirestore.instance
                                      .collection('services')
                                      .doc(widget.service.id)
                                      .update({
                                    'serviceName': _serviceName,
                                    'description': _description,
                                    'price': _price,
                                    'phoneNumber': _phoneNumber,
                                    'emailAddress': _emailAddress,
                                    'location': _location,
                                  });

                                  // Show success message or navigate to another page
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content:
                                          Text('Service updated successfully'),
                                    ),
                                  );

                                  // Navigate back to previous page
                                  Navigator.pop(context);
                                } catch (e) {
                                  print('Error updating service: $e');
                                  // Show error message
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Error updating service. Please try again later.'),
                                    ),
                                  );
                                }
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
