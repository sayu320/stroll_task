import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Container(
          height: 500,
          width: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('lib/assets/bgimage.jpeg'),
                fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 80,
          left: 80,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Stroll Bonfire',
                    style: TextStyle(
                        color: Colors.blueGrey[100],
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'lib/assets/downarrow.png',
                    width: 40,
                    height: 40,
                  )
                ],
              ),
             const SizedBox(height: 5,),
          const   Row(
            mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.alarm,
                    color: Colors.white,
                  ),
                  Text(
                    '22h 00m',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    '103',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
