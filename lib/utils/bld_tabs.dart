import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BLDtabs extends StatefulWidget {
  @override
  _BLDtabsState createState() => _BLDtabsState();
}

class _BLDtabsState extends State<BLDtabs> {
  List<bool> _isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ToggleButtons(
        splashColor: Colors.transparent,
        isSelected: _isSelected,
        borderWidth: 10,
        borderColor: Colors.transparent,
        selectedColor: Colors.white,
        fillColor: Color(0xffB0C929),
        color: Colors.black,
        //borderColor: Colors.grey,
        selectedBorderColor: Color(0xffFCFCFC),
        borderRadius: BorderRadius.circular(6),
        children: <Widget>[
          Container(
              width: 110,
              height: 38,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
              child: Center(
                  child: Text(
                'Breakfast',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600, fontSize: 14),
              ))),
          Container(
              height: 38,
              width: 100,
              child: Center(
                  child: Text(
                'Lunch',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600, fontSize: 14),
              ))),
          SizedBox(
              width: 100,
              height: 38,
              child: Center(
                  child: Text(
                'Dinner',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600, fontSize: 14),
              ))),
        ],
        onPressed: (int index) {
          setState(() {
            for (int i = 0; i < _isSelected.length; i++) {
              _isSelected[i] = i == index;
            }
          });
        },
      ),
    );
  }
}
