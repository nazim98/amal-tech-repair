import 'package:flutter/material.dart';
import '../models/service_model.dart';

class CustomCard extends StatelessWidget {
  final Service service;
  final VoidCallback? onPressedEdit;
  final VoidCallback? onLongPress;

  const CustomCard({
    required this.service,
    this.onPressedEdit,
    this.onLongPress,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(15.0),
        title: Text(
          service.title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.0),
            Text(service.description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 5.0),
            Text(
              'Price: RM${service.price.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Text('Phone: ${service.phoneNumber}',
                style: TextStyle(fontSize: 16)),
            Text('Email: ${service.emailAddress}',
                style: TextStyle(fontSize: 16)),
            Text('Location: ${service.location}',
                style: TextStyle(fontSize: 16)),
          ],
        ),
        trailing: onPressedEdit != null
            ? IconButton(
                icon: Icon(Icons.edit),
                onPressed: onPressedEdit,
              )
            : null,
        onLongPress: onLongPress,
      ),
    );
  }
}
