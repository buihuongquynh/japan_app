import 'package:flutter/material.dart'; // Import thư viện Flutter để sử dụng các widget và tính năng của Flutter
import 'package:japan_app/ui/onboarding-3.dart';

class Onboarding2Screen extends StatefulWidget {
  const Onboarding2Screen({super.key});

  @override
  State<Onboarding2Screen> createState() =>
      _Onboarding2ScreenState(); // Tạo State cho StatefulWidget
}

class _Onboarding2ScreenState extends State<Onboarding2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
            padding: const EdgeInsets.only(
              top: 130,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 23),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Onboarding3Screen()),
                        );
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Color(0xFF858597), // Màu chữ của nút
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/illustration-2.png',
                          width: 260, height: 260, fit: BoxFit.contain),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 6),
                        child: SizedBox(
                          width: 168, // Chiều rộng bạn muốn giới hạn cho Text
                          child: Text(
                            'Quick and easy learning',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              // Các thuộc tính văn bản khác nếu cần thiết
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 198, // Chiều rộng bạn muốn giới hạn cho Text
                        child: Text(
                          'Easy and fast learning at any time to help you improve various skills',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF858597)
                                  // Các thuộc tính văn bản khác nếu cần thiết
                                  ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 62),
                        child: Image.asset(
                          'assets/pagination-2.png',
                          width: 66,
                          height: 5,
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
