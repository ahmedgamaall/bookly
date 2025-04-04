import 'package:bookly/ui/common/app_strings.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorMessage;

  const CustomErrorWidget({super.key, required this.errorMessage});
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          fontFamily: ksFontFamily,
          color: Colors.white,
        ),
      ),
    );
  }
}
