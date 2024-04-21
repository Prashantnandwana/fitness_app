import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  //final String labelText;
  final TextEditingController controller;
  final bool isPasswordField;
  final TextInputType keyboardType;
  final String text;

  const MyTextField({
    super.key,
    //required this.labelText,
    required this.controller,
    this.isPasswordField = false,
    this.keyboardType = TextInputType.text, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              border: Border.all(),
              color: Colors.grey.shade100 
            ),
            height: 40,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration:const InputDecoration.collapsed(hintText: ''),
                //style: TextStyle(color: Colors.grey),
                controller: controller,
                obscureText: isPasswordField,  
                keyboardType: keyboardType,
               // decoration: const InputDecoration(fillColor: Colors.grey.shade400,
                  //labelText: labelText,
                  //border:  OutlineInputBorder(),
                ),
            ),
            ),
          
        ],
      ),
    );
  }
}
