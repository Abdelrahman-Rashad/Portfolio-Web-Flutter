import 'package:flutter/material.dart';

import '../styles/string_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Curious about me? Here you have it:",
          style: StringStyles.font30(width),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          """I'm Abdelrahman Rashad, a passionate Flutter developer specializing in creating scalable, user-centric mobile applications. With a Bachelor of Science in Computer Science from Ain Shams University and hands-on experience in state management tools like Cubit and GetX, I thrive on delivering high-quality solutions using Clean Architecture principles.
                  
Since starting my Flutter journey, I've built a range of innovative applications, from integrating AI models into apps to implementing secure payment systems like Stripe and PayPal. My notable projects include a Recipe Finder app with Gemini AI, a Payment Services app, and an E-learning app with advanced features like animations and calendar integration.
                  
Beyond coding, I enjoy sharing my knowledge as a former Flutter instructor and head of the Flutter committee at ASU. I’m also certified in Flutter Payment Integration, Clean Architecture, and UX design fundamentals, reflecting my dedication to continuous learning and improvement.
                  
Feel free to reach out if you're interested in collaborating or learning more about my work, I’m always open to new opportunities!""",
          style: StringStyles.font16gray(width),
        )
      ],
    );
  }
}
