import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'DeaJanina';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        foregroundColor: Colors.lightBlueAccent,
        backgroundColor: const Color(0xFF000080), // Modified color
      ),
      body: Container (
        color: const Color(0xFFF0FFFF),
        child: const Center(
          child: Text(
            'My Customized Drawer Widget',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Color(0xFF000080)),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFF0FFFF), // Changed background color
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFF000080)),
              accountName: const Text("Janine Coscos", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.lightBlueAccent)),
              accountEmail: const Text("janine.coscos@csucc.edu.ph", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlueAccent)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/IMG_5420.jpeg"), // Added image
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.blue),
              title: const Text(' Home ', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF000080)),),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.work, color: Colors.blue),
              title: const Text(' Projects ', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF000080)),),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.blue),
              title: const Text(' Settings ', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF000080)),),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.help, color: Colors.blue),
              title: const Text(' Help ', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF000080)),),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(' LogOut ', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF000080)),),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
