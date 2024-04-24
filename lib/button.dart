import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Examples'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                child: Text('ElevatedButton'),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                child: Text('TextButton'),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                child: Text('OutlinedButton'),
              ),
              SizedBox(height: 10),
              IconButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                icon: Icon(Icons.add),
                tooltip: 'IconButton',
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                child: Icon(Icons.add),
                tooltip: 'FloatingActionButton',
              ),
              SizedBox(height: 10),
              DropdownButton<String>(
                items: <String>['Option 1', 'Option 2', 'Option 3']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Add your onChanged logic here
                },
                hint: Text('DropdownButton'),
              ),
              SizedBox(height: 10),
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Option 2',
                      child: Text('Option 2'),
                    ),
                    PopupMenuItem<String>(
                      value: 'Option 3',
                      child: Text('Option 3'),
                    ),
                  ];
                },
                onSelected: (String value) {
                  // Add your onSelected logic here
                },
                tooltip: 'PopupMenuButton',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
