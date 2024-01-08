import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Function(String) onChange;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.controller,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller,
          onChanged: onChange,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            // contentPadding: const EdgeInsets.fromLTRB(15,15,5,20),
            hintStyle: TextStyle(
                color: const Color(0xFF4D5454).withOpacity(0.7),
                fontSize: 16),
            labelStyle: TextStyle(
                color:  const Color(0xFF4D5454).withOpacity(0.5),
                fontSize: 14),
            filled: true,
            errorMaxLines: 2,
            hintMaxLines: 2,
            focusColor: const Color(0xFFFFFFFF),
            fillColor: const Color(0xFFFFFFFF),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1.5, color: Color(0xFF087C7C)),
                borderRadius: BorderRadius.all(Radius.circular(12))),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 0.5,
                    color: const Color(0xFF4D5454).withOpacity(0.1)),
                borderRadius: const BorderRadius.all(Radius.circular(12))),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 166, 4, 4),
              ),
            ),
            errorStyle: const TextStyle(
              height: 1.0,
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: const Color(0xFF4D5454).withOpacity(0.5)),
                borderRadius:const BorderRadius.all(Radius.circular(12))),
            suffixIcon: controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(
                      Icons.cancel,
                      color: Color(0xFF087C7C),
                    ),
                    onPressed: () {
                      controller.text = "";
                    },
                  )
                : null,
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xFF087C7C),
            ),
            hintText: hint,
          ),
        ),
      ),
    );
  }
}
