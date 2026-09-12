// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_iot28_frist_project/views/forgot_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
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
                  'Welcome to SAU! Glad',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Good to see you again!',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
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
                  hintText: 'Enter your email',
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
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Enter your password',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 22.0,
                    horizontal: 20.0
                  ),
                  filled: true,
                  fillColor: Colors.grey, 
                  suffixIcon: Icon(
                    Icons.visibility_rounded,
                  ),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: (){
                    //เปิดไปหน้า ForgotUI() แบบย้อนกลับได้
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotUi(),
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 15.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              ElevatedButton(
              onPressed: () {},
              child: Text(
                'Login',
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
              height: 18.0,
            ),
            Text(
              'Or login with',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[600],
              ),
             ),
              SizedBox(
              height: 18.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/img_facebook.png',
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      105.0,
                      60.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10.0),
                    ),
                     side: BorderSide(
                      color: Colors.blue[400]!,
                      width: 2.0,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/img_google.png',
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      105.0,
                      60.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10.0),
                    ),
                    side: BorderSide(
                      color: Colors.blue[400]!,
                      width: 2.0,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Image.asset(
                    'assets/images/img_apple.png',
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(
                      105.0,
                      60.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10.0),
                    ),
                    side: BorderSide(
                      color: Colors.blue[400]!,
                      width: 2.0,
                    ),
                  ),
                ),
              ],
             ),
             SizedBox(
              height: 150.0,
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Register Now',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 11, 223, 212),
                      fontSize: 15.5,
                    ),
                  ),
                ),
              ],
             ),
            ],
          ),
        ),  
      ),
    );
  }
}
