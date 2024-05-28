import 'package:flutter/material.dart';
import 'package:library_manager/AddMemberScreen.dart';
import 'package:library_manager/MemberDetailScreen.dart'; // Importez l'écran détaillé des adhérents

class MemberListScreen extends StatefulWidget {
  @override
  _MemberListScreenState createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  List<Map<String, dynamic>> members = [
    {
      'name': 'DIANE FADWA ',
      'membershipNumber': '001',
      'contactInfo': "fadwadiane9@gmail.com",
    },
    {
      'name': 'DIANE CHAIMAA',
      'membershipNumber': '002',
      'contactInfo': 'chaimaadiane18@example.com',
    },
    // Ajoutez plus d'adhérents si nécessaire
  ];

  void _navigateToAddMemberScreen(BuildContext context) async {
    final newMember = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddMemberScreen(addMemberCallback: _addMember)),
    );

    if (newMember != null) {
      setState(() {
        members.add(newMember);
      });
    }
  }

  void _addMember(Map<String, dynamic> newMember) {
    setState(() {
      members.add(newMember);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des adhérents'),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          final member = members[index];
          return Card(
            child: ListTile(
              title: Text(member['name']),
              subtitle: Text('Numéro de membre: ${member['membershipNumber']}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MemberDetailScreen(member: member),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToAddMemberScreen(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}