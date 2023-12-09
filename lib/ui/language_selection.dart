import 'package:flutter/material.dart'; // Import thư viện Flutter để sử dụng các widget và tính năng của Flutter

class LanguageSelectScreen extends StatefulWidget {
  const LanguageSelectScreen({super.key});

  @override
  State<LanguageSelectScreen> createState() =>
      _LanguageSelectScreenState(); // Tạo State cho StatefulWidget
}

class _LanguageSelectScreenState extends State<LanguageSelectScreen> {
  int _counter = 0; // Khai báo một biến _counter để đếm số lần nhấn button

  void _incrementCounter() {
    setState(() {
      _counter++; // Tăng giá trị của _counter lên mỗi khi nhấn button và rebuild UI
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png',
                width: 200, height: 200, fit: BoxFit.contain),
            const Padding(
              padding: EdgeInsets.only(
                  top: 20, bottom: 20), // Thiết lập giá trị padding ở đây
              child: Text(
                'DISPLAY LANGUAGE',
                style: TextStyle(
                  fontSize: 25, // Độ lớn của font
                  fontWeight: FontWeight.bold,
                  // Các thuộc tính văn bản khác nếu cần thiết
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // Xử lý khi nút được nhấn
              },
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green, // Màu văn bản của button
                    backgroundColor: Color.fromARGB(255, 255, 255, 255)),
              ),
              child: const Text('Text Button'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // Xử lý sự kiện khi nhấn button
        tooltip: 'Increment', // Chú thích khi hover vào button
        child: const Icon(Icons.add), // Icon của button
      ),
    );
  }
}
