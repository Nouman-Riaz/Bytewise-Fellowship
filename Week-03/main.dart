//import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),
          title: const Text('My Home Page'),
          actions: const [
            IconButton(
                onPressed: null, icon: Icon(Icons.search), tooltip: 'Search'),
          ],
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.green,
                    ),
                    title: Text('Muhammad Nouman Riaz'),
                    subtitle: Text('Busy'),
                    trailing: Text('7:00 pm'),
                  );
                },
              ),
            ),
            const Divider(
              height: 2,
              color: Colors.green,
              thickness: 2,
            ),
            Center(
              child: Container(
                width: 70,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.yellow, width: 3)),
                child: const Center(child: Text('Tap me')),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    hintText: 'Phone no',
                    labelText: 'Phone no',
                    hintStyle: TextStyle( color: Colors.blue),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1),
                        ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1),
                    ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red,width: 1),
                  )
                ),
                onChanged: (value) {
                  print(value);
                },
              ),
            )
          ],
        ),
        floatingActionButton: const FloatingActionButton(
          tooltip: 'Add',
          onPressed: null,
          child: Icon(Icons.add),
        ));
  }
}
