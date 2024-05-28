import 'package:flutter/material.dart';
import 'package:library_manager/BookListScreen.dart';
import 'package:library_manager/AboutScreen.dart';
import 'package:library_manager/MemberListScreen.dart';
void main() {
  runApp(LibraryManagerApp());
}

class LibraryManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Library Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library Manager'),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300, // Largeur souhaitée
                height: 300, // Hauteur souhaitée
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img.jpg'),
                    fit: BoxFit.cover, // Ajuste l'image à la taille du conteneur
                  ),
                ),
              ),
              SizedBox(height: 100),
              Text(
                'Bienvenue à la bibliothèque publique! ',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Text(
                'Nous vous proposons une large collection de livres, magazines, et journaux. '
                    'Venez explorer notre collection et profitez d\'un espace de lecture agréable et paisible.',

                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange[300],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/Fadwa.jpg'), // Assurez-vous d'avoir une image dans le dossier assets
                ),
                SizedBox(height: 5),
                Text(
                  'DIANE FADWA',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  'Bibliothèque publique',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Accueil'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Livres'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BookListScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Adhérents'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MemberListScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('À propos'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen()));
            },
          ),
        ],
      ),
    );
  }
}