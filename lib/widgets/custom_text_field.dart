import 'package:flutter/material.dart';
import 'package:jewelry/utils/app_colors.dart';
import 'package:jewelry/utils/styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

// fix the hide for the password

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.icon,
    required this.label,
    this.hideText = false,
  });
  final String hint;
  final bool hideText;
  final String icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Styles.poppinsRegular14),
        TextField(
          obscureText: hideText,
          decoration: InputDecoration(
            border: _buildBorder(),
            enabledBorder: _buildBorder(),
            focusedBorder: _buildBorder(),
            hintText: hint,
            hintStyle: Styles.poppinsRegular16.copyWith(color: Colors.black),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 18),
              child: SvgPicture.asset(icon, fit: BoxFit.scaleDown),
            ),
            prefixIconConstraints:
                const BoxConstraints(minWidth: 24, maxHeight: 24),
          ),
        ),
      ],
    );
  }

  UnderlineInputBorder _buildBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.textSecondary,
      ),
    );
  }
}
