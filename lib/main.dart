import 'package:flutter/material.dart';

const List<String> users = <String>["Tom", "Alice", "Bob", "Sam", "Kate"];
const List<String> companies = <String>["Microsoft", "Google", "Apple", "JetBrains", "Amazon"];
void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(users[index], style: TextStyle(fontSize: 22)),
                      Text("Место работы: ${companies[index]}", style: TextStyle(fontSize: 18))
                    ],
                  )
              );
            }
        ),
        appBar: AppBar(title: Text("METANIT.COM")),)
  ));
}