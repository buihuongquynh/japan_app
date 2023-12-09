import 'package:flutter/material.dart'; // Import thư viện Flutter
import 'package:japan_app/ui/language_selection.dart';

void main() {
  runApp(const MyApp()); // Khởi chạy ứng dụng Flutter bằng widget MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future:
            yourAsyncFunction(), // Gọi hàm không đồng bộ để thực hiện công việc và trả về Future
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const LanguageSelectScreen(); // Trả về LanguageSelectScreen khi Future hoàn thành
          } else {
            // Trả về widget tạm thời khi đang chờ Future hoàn thành
            return const CircularProgressIndicator(); // Ví dụ: Hiển thị tiến trình chờ
          }
        },
      ),
    );
  }

  // Hàm không đồng bộ để thực hiện công việc và trả về một Future
  Future<void> yourAsyncFunction() async {
    // Thực hiện công việc không đồng bộ ở đây, trả về một Future khi hoàn thành
    // Ví dụ: Future.delayed(Duration(seconds: 2));
  }
}
