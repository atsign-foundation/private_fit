import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivateFitAppBar extends StatelessWidget {
  const PrivateFitAppBar({
    Key? key,
    required this.title,
    required this.onSearchTap,
  }) : super(key: key);
  final String title;
  final VoidCallback onSearchTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.bebasNeue(
                fontSize: 52,
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: onSearchTap,
          //   child: Container(
          //     padding: const EdgeInsets.all(12),
          //     decoration: BoxDecoration(
          //       border: Border.all(color: Colors.white),
          //       borderRadius: BorderRadius.circular(16),
          //       color: Colors.grey[200],
          //     ),
          //     child: Icon(
          //       Icons.search,
          //       size: 36,
          //       color: Colors.grey[800],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
