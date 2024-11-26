import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
class HomeAppBar extends StatefulWidget {
  final String title;
  final bool choose;
  final Color colors;
  final String date;
  const HomeAppBar({
    required this.colors,
    required this.title,
    required this.choose,
    required this.date,
    super.key,
  });

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.hex181818,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 15,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(7.5),
                bottomLeft: Radius.circular(7.5),
              ),
              color: widget.colors,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month_rounded,
                      color: Color.fromRGBO(255, 255, 255, 0.8),
                    ),
                    Text(
                      widget.date,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 16,
            ),
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: (widget.choose == true) ? AppColors.hexBA83DE : null,
              border: Border.all(color: AppColors.hexBA83DE, width: 2),
            ),
            child: widget.choose == true
                ? const Icon(
              Icons.check,
              size: 18,
            )
                : null,
          )
        ],
      ),
    );
  }
}



