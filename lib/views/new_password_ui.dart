// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_iot28_frist_project/views/password_change_ui.dart';

class NewPasswordUi extends StatefulWidget {
  const NewPasswordUi({super.key});

  @override
  State<NewPasswordUi> createState() => _NewPasswordUiState();
}

class _NewPasswordUiState extends State<NewPasswordUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: 70.0,
          left: 40.0,
          right: 40.0,
          bottom: 50.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft, 
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 25.0,
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      75.0,
                      65.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create new password',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Your new password mus be unique from those',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'previously used.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey[400],
                  ),
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'New Password',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 20.0
                  ),
                  filled: true,
                  fillColor: Colors.grey, 
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Confirm Password',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 24.0,
                    horizontal: 20.0
                  ),
                  filled: true,
                  fillColor: Colors.grey, 
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasswordChangeUi(),
                  ),
                );
              },
              child: Text(
                'Reset Password',
                style: TextStyle(
                  color: Colors.white, 
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width,
                  60.0,
                ),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
              SizedBox(
              height: 40.0,
              ),
            ],
          ),
        ),  
      ),
    );
  }
}