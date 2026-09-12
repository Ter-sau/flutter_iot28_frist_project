// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_iot28_frist_project/views/login_ui.dart';

class PasswordChangeUi extends StatefulWidget {
  const PasswordChangeUi({super.key});

  @override
  State<PasswordChangeUi> createState() => _PasswordChangeUiState();
}

class _PasswordChangeUiState extends State<PasswordChangeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300.0,
            ),
            Image.asset(
              'assets/images/img_correct.png',
              height: 130.0,
            ),
            SizedBox(
              height: 24.0,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  'Password Changed!',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Your password has been changed',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'successfully',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[400],
                  ),
                ),
              ),
             SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginUi(),
                  ),
                );
              },
              child: Text(
                'Black to Login',
                style: TextStyle(
                  color: Colors.white, 
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  380,
                  55,
                ),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}