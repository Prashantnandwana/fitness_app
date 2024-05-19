import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  final String textwithdivider;
  const ImageContainer({super.key, required this.imagePath, required this.text, required this.textwithdivider});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          const SizedBox(
            height: 12,
          ),
          Text(
            text,style: GoogleFonts.montserrat(fontWeight:FontWeight.w600,fontSize:12,color:Color(0xff1191919)),
            // style: TextStyle(
            //     fontFamily: "Montserrat",
            //     fontWeight: FontWeight.w600,
            //     fontSize: 15),
          ),
          const SizedBox(
            height: 8,
          ),
           Text(
            textwithdivider,
           style: GoogleFonts.montserrat(fontWeight:FontWeight.w500,fontSize:10,color:Color(0xff3A4750)),
          ),
        ],
      ),
    );
  }
}
