import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >
        600; // Example threshold for desktop view

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        actions: isDesktop
            ? [
                IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    // Handle icon tap for desktop view
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {
                    // Handle settings tap for desktop view
                  },
                ),
              ]
            : null,
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      drawer: isDesktop
          ? null
          : Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    child: Text('Menu'),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  ListTile(
                    title: Text('Item 1'),
                    onTap: () {
                      // Handle item 1 tap for mobile view
                    },
                  ),
                  ListTile(
                    title: Text('Item 2'),
                    onTap: () {
                      // Handle item 2 tap for mobile view
                    },
                  ),
                ],
              ),
            ),
    );
  }
}
