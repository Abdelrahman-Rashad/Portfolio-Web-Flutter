import 'package:flutter/material.dart';

class ProjectImageCard extends StatelessWidget {
  const ProjectImageCard({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54, // shadow color
                  blurRadius: 20, // shadow radius
                  spreadRadius:
                      0.1, // The amount the box should be inflated prior to applying the blur
                  blurStyle: BlurStyle.normal // set blur style

                  ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
