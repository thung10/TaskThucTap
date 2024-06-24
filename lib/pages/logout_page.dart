import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/custom_button.dart';

class LogoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Logout Page'),
            CustomButton(
              text: 'Logout',
              onPressed: () {
                // Implement logout logic
              },
            ),
          ],
        ),
      ),
    );
  }
}
