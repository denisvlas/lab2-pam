import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  final String path;
  final String label;
  final Color color;

  const CategoryItem({required this.path, required this.label,required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     
        //i want to be rectangle with radius 10 intead of circle
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
          ),
          child:
          SvgPicture.asset(
                        path,
                        height: 24.0, // poți ajusta dimensiunea SVG-ului
                        width: 24.0,
                      ),
        ),


        SizedBox(height: 8),
     Text(
  label.length > 8 ? '${label.substring(0, 8)}...' : label,
  style: const TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    height: 1.5, // This is equivalent to line-height: 18px / 12px = 1.5
  ),
),      ],
    );
  }
}