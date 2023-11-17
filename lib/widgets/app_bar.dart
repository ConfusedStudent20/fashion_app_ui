import 'package:flutter/material.dart';

AppBar buildAppBar() => AppBar(
      leading: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Explore Clothes',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
             TextSpan(
              text: 'Collection',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
