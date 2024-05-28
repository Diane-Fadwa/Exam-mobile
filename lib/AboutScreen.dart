import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('À propos'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/img.jpg', // Remplacez le chemin par l'emplacement de votre image
                width: 300,
                height: 300,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'À propos de l\'application',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Cette application a été créée pour aider à gérer une bibliothèque publique. Elle permet de gérer les livres, les membres et offre différentes fonctionnalités pour rendre la gestion de la bibliothèque plus efficace.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Développée par : DIANE FADWA',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Version : 1.0.0',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Contact : fadwadiane9@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}