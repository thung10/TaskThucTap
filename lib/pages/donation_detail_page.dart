import 'package:flutter/material.dart';
import 'donation_program.dart';

class DonationDetailPage extends StatelessWidget {
  final DonationProgram donationProgram;

  DonationDetailPage({required this.donationProgram});

  final TextEditingController _donationAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(donationProgram.title),
      ),
      backgroundColor: Color.fromRGBO(243, 225, 194, 1), 
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              donationProgram.imageUrl,
              width: double.infinity, 
              height: 200, 
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              donationProgram.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              donationProgram.description,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _donationAmountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nhập số tiền quyên góp',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                String amount = _donationAmountController.text;
                if (amount.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Vui lòng nhập số tiền quyên góp'),
                    ),
                  );
                } else {
                  double? donationAmount = double.tryParse(amount);
                  if (donationAmount != null && donationAmount > 0) {
                   
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Quyên góp thành công!'),
                      ),
                    );
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Vui lòng nhập số tiền hợp lệ'),
                      ),
                    );
                  }
                }
              },
              child: Text('Quyên góp'),
            ),
          ],
        ),
      ),
    );
  }
}
