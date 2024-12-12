import 'package:flutter/material.dart';

import 'package:puantac/widgets/app_bar.dart';
import 'package:puantac/widgets/calender.dart';


class HomePage extends StatelessWidget
{
  const HomePage( { super.key } );

  @override
  Widget build( BuildContext context )
  {
    return Scaffold(
      appBar: appBar(),

      body: const Column(
        children: [

          Calender(),
        ],
      ),
    );
  }
}
