import 'package:cloud_firestore/cloud_firestore.dart';

class Service {
  final String id;
  final String title;
  final String description;
  final double price;
  final String phoneNumber;
  final String emailAddress;
  final String location;
  final DateTime timestamp; // New field for timestamp

  Service({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.phoneNumber,
    required this.emailAddress,
    required this.location,
    required this.timestamp, // Include timestamp in constructor
  });

  factory Service.fromFirestore(Map<String, dynamic> data, String documentId) {
    return Service(
      id: documentId,
      title: data['serviceName'] ?? '',
      description: data['description'] ?? '',
      price: (data['price'] ?? 0.0).toDouble(),
      phoneNumber: data['phoneNumber'] ?? '',
      emailAddress: data['emailAddress'] ?? '',
      location: data['location'] ?? '',
      timestamp: (data['timestamp'] as Timestamp).toDate(), // Parse timestamp
    );
  }
}
