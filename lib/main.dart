import 'package:flutter/material.dart';
import 'package:new_drawer/bg_image.dart';

import 'Edrawer.dart';

void main() {
  runApp(MaterialApp(
    title: 'Awesome app',
    theme: ThemeData(
      primarySwatch: Colors.amber,
    ),
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "change me";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Awesome app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                Bgimage(),
                SizedBox(height: 20),
                Text(
                  myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "enter something here",
                      labelText: "Name",
                      border: OutlineInputBorder()),
                )
              ],
            ),
          ),
        ),
      ),
      drawer: Edrawer(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            myText = _nameController.text;
            setState(() {});
          },
          child: Icon(Icons.refresh)),
    );
  }
}
