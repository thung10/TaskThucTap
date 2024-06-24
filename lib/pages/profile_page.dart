import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isLoggedIn = true; 

  void logout() {
   
    setState(() {
      isLoggedIn = false; 
    });
    Navigator.pushReplacementNamed(context, '/login'); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          if (isLoggedIn)
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: logout,
            ),
        ],
      ),
      backgroundColor: Color.fromRGBO(243, 225, 194, 1), 
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/login.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'Nguyễn Văn A',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, 
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Developer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.email, color: Colors.black), 
              title: Text(
                'example@email.com',
                style: TextStyle(fontSize: 16, color: Colors.black), 
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.black), 
              title: Text(
                '1234567890',
                style: TextStyle(fontSize: 16, color: Colors.black), 
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.black), 
              title: Text(
                'Hanoi, Vietnam',
                style: TextStyle(fontSize: 16, color: Colors.black), 
              ),
            ),
            ListTile(
              leading: Icon(Icons.cake, color: Colors.black), 
              title: Text(
                'January 1, 1990',
                style: TextStyle(fontSize: 16, color: Colors.black), 
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Edit Profile'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromRGBO(252, 245, 229, 1)), 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
