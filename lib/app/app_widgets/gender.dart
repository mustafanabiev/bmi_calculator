import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderWidget extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Color color;
  final Icon icon;
  const GenderWidget({
    Key? key,
    required this.onTap,
    required this.text,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(
                height: 10.0,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                ),
              )
            ],
          ),
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
        ),
      ),
    );
  }
}
