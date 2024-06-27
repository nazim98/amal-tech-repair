import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../components/custom_card.dart';
import '../components/search_bar.dart';
import '../models/service_model.dart';
import 'edit_service_page.dart';
import '../components/my_drawer.dart'; // Import the drawer component

class MePage extends StatefulWidget {
  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Services',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Colors.red,
        elevation: 4,
      ),
      drawer: const MyDrawer(), // Add the drawer here
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.redAccent, Colors.orangeAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            CustomSearchBar(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
            Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('services')
                    .orderBy('timestamp',
                        descending: true) // Order by timestamp descending
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }

                  List<Service> services =
                      snapshot.data!.docs.map((DocumentSnapshot document) {
                    Map<String, dynamic> data =
                        document.data() as Map<String, dynamic>;
                    return Service.fromFirestore(data, document.id);
                  }).toList();

                  if (searchQuery.isNotEmpty) {
                    services = services.where((service) {
                      return service.title
                              .toLowerCase()
                              .contains(searchQuery.toLowerCase()) ||
                          service.description
                              .toLowerCase()
                              .contains(searchQuery.toLowerCase());
                    }).toList();
                  }

                  return ListView.builder(
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                      Service service = services[index];
                      return CustomCard(
                        service: service,
                        onPressedEdit: () {
                          // Navigate to edit page with service data
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  EditServicePage(service: service),
                            ),
                          );
                        },
                        onLongPress: () {
                          // Implement delete functionality
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Delete Service'),
                                content: Text(
                                    'Are you sure you want to delete this service?'),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text('Cancel'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  TextButton(
                                    child: Text('Delete'),
                                    onPressed: () async {
                                      Navigator.of(context).pop();
                                      try {
                                        await FirebaseFirestore.instance
                                            .collection('services')
                                            .doc(service.id)
                                            .delete();
                                      } catch (e) {
                                        print('Error deleting service: $e');
                                        // Show error message
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                              content: Text(
                                                  'Error deleting service. Please try again later.')),
                                        );
                                      }
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
