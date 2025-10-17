import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Contact App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ContactListPage(),
    );
  }
}

class ContactListPage extends StatelessWidget {
  const ContactListPage({super.key});
  final List<Map<String, String>> contacts = const [
    {"name": "Kaspian", "number": "+880 1745262631"},
    {"name": "Amira", "number": "+880 1987 654321"},
    {"name": "Amira2", "number": "+880 1765 432198"},
    {"name": "Farhin", "number": "+880 1555 998877"},
    {"name": "Emran", "number": "+880 1444 223344"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Text(
                  contact['name']![0], // First letter of name
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                contact['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(contact['number']!),
              trailing: const Icon(Icons.phone, color: Colors.teal),
            ),
          );
        },
      ),
    );
  }
}
