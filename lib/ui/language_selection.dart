import 'package:flutter/material.dart'; // Import thư viện Flutter để sử dụng các widget và tính năng của Flutter

class LanguageSelectScreen extends StatefulWidget {
  const LanguageSelectScreen({Key? key}); // Khai báo một StatefulWidget có tên LanguageSelectScreen

  @override
  State<LanguageSelectScreen> createState() => _LanguageSelectScreenState(); // Tạo State cho StatefulWidget
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
            const Text(
              'You have pushed the button this many times:', // Hiển thị một text cố định
            ),
            Text(
              '$_counter', // Hiển thị giá trị của _counter
              style: Theme.of(context).textTheme.headline6, // Style cho text
            ),
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
