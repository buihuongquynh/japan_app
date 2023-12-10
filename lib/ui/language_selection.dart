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
      backgroundColor: const Color.fromARGB(241, 242, 241, 255),
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
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          // Xử lý khi nút được nhấn
                        },
                        label: const Text(
                          'ENGLISH',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        icon: Image.asset(
                          'assets/en.png',
                          width: 32,
                          height: 32,
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 60))),
                    const SizedBox(height: 15),
                    ElevatedButton.icon(
                        onPressed: () {
                          // Xử lý khi nút được nhấn
                        },
                        label: const Text(
                          'TIẾNG VIỆT',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        ),
                        icon: Image.asset(
                          'assets/vn.png',
                          width: 32,
                          height: 32,
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 60),
                            backgroundColor:
                                const Color.fromRGBO(23, 147, 245, 1))),
                    const SizedBox(height: 15),
                    ElevatedButton(
                        onPressed: () {
                          // Xử lý khi nút được nhấn
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 60),
                            backgroundColor:
                                const Color.fromRGBO(54, 183, 36, 1)),
                        child: const Text(
                          'NEXT',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 255, 255, 1)),
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
