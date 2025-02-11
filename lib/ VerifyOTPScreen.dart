import 'package:flutter/material.dart';
import 'productprovider.dart';
import 'AuthProvider.dart';
import 'package:provider/provider.dart';


class VerifyOTPScreen extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Verify OTP')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter OTP'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                authProvider.login('User');
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
