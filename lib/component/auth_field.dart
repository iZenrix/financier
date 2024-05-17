import 'package:flutter/material.dart';
import '../theme/theme.dart';

class AuthField extends StatefulWidget {
  const AuthField({
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.obscureText,
  });

  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final bool? obscureText;

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: widget.obscureText != null
          ? AppTheme.obscureInputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        onTap: () {
          setState(() {
            isObscure = !isObscure;
          });
        },
      )
          : AppTheme.defaultInputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
      ),
      validator: (String? value) {
        if (value!.isEmpty) return "${widget.labelText} is missing";
        return null;
      },
      obscureText: widget.obscureText != null && !isObscure,
    );
  }
}