import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AuthProvider.dart';

class ConfirmNameScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Confirm Name')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Enter Your Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (nameController.text.isNotEmpty) {
                  authProvider.login(nameController.text);
                  Navigator.pushReplacementNamed(context, '/home');
                }
              },
              child: Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }
}
