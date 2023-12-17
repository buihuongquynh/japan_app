import 'package:flutter/material.dart'; // Import thư viện Flutter để sử dụng các widget và tính năng của Flutter
import 'package:japan_app/components/button.dart';

class Onboarding3Screen extends StatefulWidget {
  const Onboarding3Screen({super.key});

  @override
  State<Onboarding3Screen> createState() =>
      _Onboarding3ScreenState(); // Tạo State cho StatefulWidget
}

class _Onboarding3ScreenState extends State<Onboarding3Screen> {
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
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/illustration-3.png',
                          width: 260, height: 260, fit: BoxFit.contain),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 6),
                        child: SizedBox(
                          width: 168, // Chiều rộng bạn muốn giới hạn cho Text
                          child: Text(
                            'Create your own study plan',
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
                          'Study according to the study plan, make study more motivated',
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
                          'assets/pagination-3.png',
                          width: 66,
                          height: 5,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 82,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              text: 'Sign up',
                              onPressed: () {
                                //
                              },
                            ),
                            const SizedBox(
                              width: 14,
                            ),
                            CustomButton(
                              text: 'Sign up',
                              onPressed: () {
                                //
                              },
                              backgroundColor: Colors.white,
                              textColor: const Color(0xFF3D5CFF),
                            ),
                          ]),
                    ],
                  ),
                ),
              ],
            ))
      ],
    ));
  }
}
