import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter
import 'package:google_fonts/google_fonts.dart';

void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      title: 'My Resume',
      color: Colors.deepPurple,
      debugShowCheckedModeBanner: false, // ซ่อนแบนเนอร์ debug
      theme: ThemeData(
        fontFamily: GoogleFonts.sarabun().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      home: const MyHomePage(), // วิดเจ็ตหน้าจอหลักของคุณ
    );
  }
}

// ตัวอย่างวิดเจ็ตที่ส่งคืนโดย property 'home' ของ MaterialApp
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Resume'),
        titleTextStyle: TextStyle(
          color: const Color.fromARGB(255, 58, 31, 105),
          fontSize: 20,
        ), 
        backgroundColor: const Color.fromARGB(255, 201, 182, 234),
      ),
      body: Padding(
        // เพิ่ม Padding รอบ Column
        padding: const EdgeInsets.all(12.0),
        child: Column(
          // ใช้ Column สำหรับเลย์เอาต์แนวตั้ง
          // crossAxisAlignment:
          //     CrossAxisAlignment.center, // จัดกึ่งกลางไอเท็มแนวนอน
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/me.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.deepPurple, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
              //decoration: BoxDecoration(
              //  color: const Color.fromARGB(255, 159, 124, 112),
              //  borderRadius: BorderRadius.circular(10.0),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 201, 182, 234),
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "น.ส.วิโรษณาธ์ แก้วกุลวงษ์",
                      style: GoogleFonts.sarabun(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 43, 2, 97),
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 201, 182, 234),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• ภูมิลำเนา : เชียงใหม่\n"
                    "• งานอดิเรก : ฟังเพลง,วาดรูประบายสี",
                  ),
                ],
              ),
            ),
                
                ],
              ),
            ),
            const SizedBox(height: 2),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              //margin: const EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 201, 182, 234),
                border: Border.all(color: Colors.grey.shade300, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                'การศึกษา',
                style: GoogleFonts.sarabun(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 43, 2, 97),
                ),
              ),
            ),

            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 201, 182, 234),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• ประถม : โรงเรียนอนุบาลเชียงใหม่ (2560)\n"
                    "• มัธยมต้น : โรงเรียนยุพราชวิทยาลัย (2563)\n"
                    "• มัธยมปลาย : โรงเรียนปรินส์รอยแยลส์วิทยาลัย (2566)",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
