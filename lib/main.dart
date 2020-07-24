import 'package:flutter/material.dart';

import 'Edrawer.dart';

void main() {
  runApp(MaterialApp(
    title: 'Awesome app',
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Awesome app"),
      ),
      body: Container(
        height: 300,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1512540315028-2c1a6497da04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
          fit: BoxFit.cover,
        )),
      ),
      drawer: Edrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
    );
  }
}
