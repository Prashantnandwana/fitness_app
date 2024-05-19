import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calander extends StatelessWidget {
  final String day;
  final String date;
  final bool isSelected;
  const Calander(
      {super.key,
      required this.day,
      required this.date,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        height: 80,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Color(0xff000000) : Color(0xfff6f6ed),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                day,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: isSelected ? Color(0xffffffff) : Color(0xff3A4750)),
              ),
              SizedBox(height: 10),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:  Color(0xffffffff)),
                child: Center(
                    child: Text(
                  date,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color:  Color(0xff000000) ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
