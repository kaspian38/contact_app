import 'package:flutter/material.dart';
//import "package:ContactApp/main.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ContactPage(),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});


  final List<Map<String, String>> contacts = const [
    {"name": "Kaspian", "number": "+880 1745262631"},
    {"name": "Raihan", "number": "+880 1716738503"},
    {"name": "Amira1", "number": "+880 17117135655"},
    {"name": "Amira2", "number": "+880 1703870990"},
    {"name": "Farhin", "number": "+880 1737094289"},
    {"name": "Mohaimanur Bhai", "number": "+880 1742950771"},


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Text(
                  contact["name"]![0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(contact["name"]!),
              subtitle: Text(contact["number"]!),
              trailing: const Icon(Icons.phone, color: Colors.teal),
            ),
          );
        },
      ),
    );
  }
}
