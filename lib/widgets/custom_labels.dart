import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String route;
  final String title;
  final String subtitle;

  const Labels(
      {super.key,
      required this.route,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          title,
          style: const TextStyle(
              color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, route);
            },
            child: Text(
              subtitle,
              style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
