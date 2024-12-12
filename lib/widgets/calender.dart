import 'package:flutter/material.dart';


class Calender extends StatefulWidget
{
  const Calender( { super.key } );

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender>
{

  final List<String> months = [

    '', 'Ocak', 'Şubat', 'Mart', 'Nisan', 'Mayıs', 'Haziran',
    'Temmuz', 'Ağustos', 'Eylül', 'Ekim', 'Kasım', 'Aralık'
  ];

  int year  = DateTime.now().year;
  int month = DateTime.now().month;


  @override
  Widget build( BuildContext context )
  {
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 20.0, vertical: 10.0 ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          IconButton(
            onPressed: ()
            {
              setState( ()
              {
                if( month == 1 )
                {
                  year--;
                  month = 12;
                }

                  month--;
              });
            },

            icon: const Icon( Icons.arrow_back )
          ),

          Text( '${ months[ month ] } $year' ),

          IconButton(
            onPressed: ()
            {
              setState( ()
              {
                if( month == 12 )
                {
                  year++;
                  month = 0;
                }

                  month++;
              });
            },

            icon: const Icon( Icons.arrow_forward )
          ),
        ],
      ),
    );
  }
}