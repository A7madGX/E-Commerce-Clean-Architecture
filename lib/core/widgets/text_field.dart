import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/device/device_utli.dart';

class GTextField extends StatefulWidget {
  final String label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  const GTextField(
      {super.key, required this.label, this.prefixIcon, this.obscureText = false, this.suffixIcon});

  @override
  State<GTextField> createState() => _GTextFieldState();
}

class _GTextFieldState extends State<GTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (event) {
        GDeviceUtils.hideKeyboard(context);
      },
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        labelText: widget.label,
      ),
    );
  }
}
