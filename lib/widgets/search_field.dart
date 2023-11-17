import 'package:flutter/material.dart';
Widget buildSearchBar() => Padding(
      padding: EdgeInsets.all(12.0
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search ',
          
          fillColor: Color.fromARGB(255, 242, 230, 230).withOpacity(0.2),
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
              vertical: 0.0, horizontal:12),
          filled: true,
          suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.filter_2)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            // borderSide: BorderSide.none,
          ),
        ),
        
      ),
    );