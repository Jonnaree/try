import 'package:flutter/material.dart';

// Entry point of the Flutter app
void main() => runApp(MyApp());

// Root widget of the app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionTile Demo',
      debugShowCheckedModeBanner: false, // Removes the debug banner in top-right corner
      home: Scaffold(
        appBar: AppBar(
          title: Text('INTEGRATIVE PROGRAMMING'),
          backgroundColor: Colors.yellow, // AppBar color set to yellow
        ),
        body: ListView(
          padding: EdgeInsets.all(12.0), // Adds padding to the ListView
          children: [

            // -----------------------
            // FIRST ExpansionTile card
            // -----------------------
            Card(
              elevation: 4, // Adds shadow to the card
              child: ExpansionTile(
                title: Text(
                  'What is Integrative Programming Technologies?',
                  style: TextStyle(fontWeight: FontWeight.bold), // Bold text for title
                ),
                subtitle: Text('INTEGRATIVE PROGRAMMING TECHNOLOGIES'),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0), // Padding inside the expanded content
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Main explanation text
                        Text(
                          'Integrative Programming is an approach that combines multiple languages, technologies, or systems to build a unified application. It focuses on system integration and interoperability.',
                          style: TextStyle(fontSize: 16.0),
                        ),

                        SizedBox(height: 10), // Space between sections

                        // Subheading: Example
                        Text(
                          'Example:',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 5),

                        // Example list
                        Text(
                          '- A web app using HTML, CSS, JavaScript, PHP, and MySQL.\n'
                          '- A mobile app (Flutter) accessing REST APIs from a Python backend.\n'
                          '- Combining C++ for performance with Python for scripting.',
                          style: TextStyle(fontSize: 15.0),
                        ),

                        SizedBox(height: 10),

                        // Subheading: Key Concepts
                        Text(
                          'Key Concepts:',
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 5),

                        // List of concepts
                        Text(
                          '- Integration of systems\n'
                          '- Interoperability between platforms\n'
                          '- Reusability of existing tech',
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // --------------------------------
            // SECOND ExpansionTile card (extra)
            // --------------------------------
            Card(
              elevation: 4,
              child: ExpansionTile(
                leading: Icon(Icons.code), // Different icon for this section
                title: Text(
                  'Why is Integrative Programming Useful?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Integrative Programming allows developers to use the best tools for each part of a project. It improves flexibility, reduces development time, and enables better reuse of existing systems.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
