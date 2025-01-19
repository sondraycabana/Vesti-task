// import 'package:flutter/material.dart';
//
// class CustomTextField extends StatelessWidget {
//   final String labelText;
//   final String? hintText;
//   final String? floatingLabelText; // New: Allows customizing the floating label text
//   final bool isPassword;
//   final TextEditingController? controller;
//   final Widget? suffixIcon;
//   final double floatingLabelFontSize;
//
//   const CustomTextField({
//     Key? key,
//     required this.labelText,
//     this.hintText,
//     this.floatingLabelText, // Optional floating label text
//     this.isPassword = false,
//     this.controller,
//     this.suffixIcon,
//     this.floatingLabelFontSize = 14.0, // Default font size for floating label
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       controller: controller,
//       obscureText: isPassword,
//       decoration: InputDecoration(
//         labelText: floatingLabelText ?? labelText, // Use custom floating label text if provided
//         hintText: hintText,
//         border: OutlineInputBorder(),
//         suffixIcon: suffixIcon,
//         floatingLabelStyle: TextStyle(
//           fontSize: floatingLabelFontSize,
//           fontWeight: FontWeight.w600, // Optional: Adjust weight
//           color: Colors.blue,          // Optional: Adjust color
//         ),
//       ),
//     );
//   }
// }













import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String? hintText;
  final String? floatingLabelText;
  final bool isPassword;
  final TextEditingController? controller;
  final double floatingLabelFontSize;

  const CustomTextField({
    Key? key,
    required this.labelText,
    this.hintText,
    this.floatingLabelText,
    this.isPassword = false,
    this.controller,
    this.floatingLabelFontSize = 14.0,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        labelText: widget.floatingLabelText ?? widget.labelText,
        hintText: widget.hintText,
        border: OutlineInputBorder(),
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        )
            : null,
        floatingLabelStyle: TextStyle(
          fontSize: widget.floatingLabelFontSize,
          fontWeight: FontWeight.w600,
            color: AppColors.black1
        ),
      ),
    );
  }
}
