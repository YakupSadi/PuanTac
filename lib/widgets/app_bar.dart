import 'package:flutter/material.dart';


AppBar appBar()
{
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,

    leading:
      IconButton(
        onPressed: () {},

        icon: const Icon( Icons.menu )
      ),

    actions: [
      IconButton(
        onPressed: () {},

        icon: const Icon( Icons.notifications ),
      ),
    ],
  );
}