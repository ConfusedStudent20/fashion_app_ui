import 'package:flutter/material.dart';

AppBar buildAppBar() => AppBar(
      toolbarHeight: 100,
      title: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Explore clothes',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            'Collection',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_drop_down_circle_rounded),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: CircleAvatar(
            radius: 27,
            backgroundColor: Color.fromARGB(255, 58, 8, 67),
            child: CircleAvatar(
              radius: 25,
              foregroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/model6.jpg',
              ),
            ),
          ),
        )
      ],
    );
