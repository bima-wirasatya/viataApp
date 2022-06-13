import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:viata/utils/currency_format.dart';

import '../theme.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
    required this.name,
    required this.detail,
    required this.price,
  }) : super(key: key);

  final String name;
  final String detail;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              name,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            detail,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.7,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              CurrencyFormat.convertToIdr(price, 0),
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.7,
              ),
            ),
          )
        ],
      ),
    );
  }
}
