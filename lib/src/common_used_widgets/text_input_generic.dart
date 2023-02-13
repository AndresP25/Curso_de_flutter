import 'package:flutter/material.dart';

class TextInputGeneric extends StatelessWidget {

  TextInputGeneric({
    required this.hintText,
    required this.inputType,
    required this.controller,
    this.maxLines,
    super.key
  });

  final String hintText;
  final TextInputType? inputType;
  final TextEditingController controller; //captura datos en variable para luego mandarlos
  int? maxLines = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20,left: 20),
      child: TextField(

        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines,

        style: const TextStyle(
          fontSize: 15,
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),

        decoration: InputDecoration(
          fillColor: const Color(0xFFe5e5e5),
          filled: true,
          border: InputBorder.none,
          hintText: hintText,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFe5e5e5),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(9)
            )
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFe5e5e5),
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(9)
              )
          ),
        )
      ),
    );

  }
  
}