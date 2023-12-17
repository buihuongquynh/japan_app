import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF3D5CFF),
    this.borderColor =
        const Color(0xFF3D5CFF), // Mặc định là cùng màu với background
    this.textColor = Colors.white, // Mặc định là màu trắng
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: borderColor), // Đặt màu viền
          ),
        ),
        minimumSize: MaterialStateProperty.all<Size>(
            const Size(160, 50)), // Đặt giá trị width và height tại đây
        backgroundColor: MaterialStateProperty.all<Color>(
            backgroundColor), // Đặt màu nền ở đây
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: textColor), // Đặt màu chữ
      ),
    );
  }
}
