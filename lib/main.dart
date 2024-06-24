import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/register_page.dart';
import 'package:flutter_application_1/pages/forgot_password_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/donation_detail_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/dashboard_page.dart';
import 'package:flutter_application_1/pages/donation_program.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ứng dụng Quyên góp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/register': (context) => RegisterPage(),
        '/forgot_password': (context) => ForgotPasswordPage(),
        '/profile': (context) => ProfilePage(), 
        '/dashboard': (context) => DashboardPage(), 
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/donation_detail') {
          final DonationProgram donationProgram = settings.arguments as DonationProgram;
          return MaterialPageRoute(
            builder: (context) {
              return DonationDetailPage(donationProgram: donationProgram);
            },
          );
        }
        return null;
      },
    );
  }
}
