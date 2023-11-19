import 'package:flutter/material.dart';

buildCatTitle() => ListTile(
      title: Text(
        'Categories',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: Text(
          'View all',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
