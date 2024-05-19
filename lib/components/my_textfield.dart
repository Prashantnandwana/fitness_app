import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Text(text,style: GoogleFonts.getFont(
                            'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color( 0xff3A4750),
                          ),
          // TextStyle(fontFamily: "Montserrat",fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xff3A4750)),
           ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Color(0xff696969)),
              color:Color(0xfff5f5f5) 
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
