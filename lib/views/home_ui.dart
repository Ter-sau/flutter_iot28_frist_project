// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_iot28_frist_project/views/login_ui.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120.0,
            ),
            Image.asset(
              'assets/images/img_dev1.png',
              height: 250.5,
            ),
            SizedBox(
              height: 80.0,
            ), 
            Image.asset(
              'assets/images/img_dev2.png',
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SAU',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 246, 255, 0),
                  ),
                ),
                Text(
                  'Developer',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: const Color.fromARGB(255, 0, 4, 255),
                  ),
                ),
              ],
            ),
             SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
              onPressed: () {
                //เปิดไปหน้า LoginUI เเบบย้อนกลับได้
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginUi(),
                  ),
                );
              },
              child: Text(
                'Login',
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
             SizedBox(
              height: 18.0,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: OutlinedButton.styleFrom(
                fixedSize: Size(
                  380,
                  55,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 98.0,
            ),
            Text(
              'Create by Korrawit SAU',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 255, 238),
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
             Text(
              'มหาวิทยาลัยเอเชียอาคเนย์',
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 255, 238),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
