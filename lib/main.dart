import 'package:flutter/material.dart';
import 'package:flutter_iot28_frist_project/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

//---------------------------------------------------------

void main() {
  runApp(
    //เรียกใช้งาน Class ที่เรียกใช้ Widget หลักของ App
    const FlutterIot28FristProject(),
  );
}

//---------------------------------------------------------
//แนะนำเป็น Class แบบ StatefulWidget โดนตั้งชื่อล้อกับชื่อโปรเจ็กต์
//Class นี้จะเรียกใช้ Widget หลักของ App โดย Widget หลักของแอปแนะนำ MaterialApp
class FlutterIot28FristProject extends StatefulWidget {
  const FlutterIot28FristProject({super.key});

  @override
  State<FlutterIot28FristProject> createState() => _FlutterIot28FristProjectState();
}

class _FlutterIot28FristProjectState extends State<FlutterIot28FristProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //ซ่อนป้ายแบนเนอร์ที่มุมขวาบน
      home: const HomeUI(),
      theme: ThemeData(
        //ให้เลือกใช้ Font จาก google font ณ ที่นี้.ใช้ฟอนต์ kanit
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    ); // MaterialApp
  }
}
