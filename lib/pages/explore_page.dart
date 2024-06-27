import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../components/custom_card.dart';
import '../components/search_bar.dart';
import '../models/service_model.dart';
import '../components/my_drawer.dart'; // Import the drawer component

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  String searchQuery = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Explore Page',
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
