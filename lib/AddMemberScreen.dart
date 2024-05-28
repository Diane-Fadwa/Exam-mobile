import 'package:flutter/material.dart';

class AddMemberScreen extends StatefulWidget {
  final Function(Map<String, dynamic>) addMemberCallback;

  const AddMemberScreen({Key? key, required this.addMemberCallback}) : super(key: key);

  @override
  _AddMemberScreenState createState() => _AddMemberScreenState();
}

class _AddMemberScreenState extends State<AddMemberScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _membershipNumberController = TextEditingController();
  final TextEditingController _contactInfoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajouter un adhérent'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nom'),
            ),
            TextFormField(
              controller: _membershipNumberController,
              decoration: InputDecoration(labelText: 'Numéro de membre'),
            ),
            TextFormField(
              controller: _contactInfoController,
              decoration: InputDecoration(labelText: 'Informations de contact'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lorsque le bouton "Ajouter" est pressé, envoyez les détails du nouvel adhérent à travers la fonction de rappel
                final newMember = {
                  'name': _nameController.text,
                  'membershipNumber': _membershipNumberController.text,
                  'contactInfo': _contactInfoController.text,
                };
                widget.addMemberCallback(newMember);
                Navigator.pop(context); // Fermez l'écran d'ajout d'adhérent
              },
              child: Text('Ajouter'),
            ),
          ],
        ),
      ),
    );
  }
}