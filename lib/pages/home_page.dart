import 'package:flutter/material.dart';
import 'package:stroll_task/pages/gridview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
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
                    const SizedBox(
                      height: 5,
                    ),
                    const Row(
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
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -5,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                  padding: const EdgeInsets.only(bottom: 16),
                  width: double.infinity,
                  height: 100,
                  child: ListTile(
                      leading: const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('lib/assets/dp.jpeg'),
                      ),
                      title: const Text(
                        'Angelina 28',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'What is your favorite time of the day?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "'Mine is definitely peace in the morning'",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 15),
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
          Container(
              height: 170,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: gridItems.take(2).map((item) {
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton.icon(
                                onPressed: () {},
                                icon: Image.asset(
                                  item.imagePath,
                                  width: 20,
                                  height: 20,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  item.text,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(fontSize: 16),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueGrey,
                                    padding: const EdgeInsets.all(8.0))),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: gridItems.skip(2).map((item) {
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Image.asset(
                                item.imagePath,
                                width: 20,
                                height: 20,
                                
                              ),
                              label: Text(
                                item.text,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 16),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey,
                                  padding: const EdgeInsets.all(8.0))),
                        ),
                      );
                    }).toList(),
                  )
                ],
              )),
          Container(
            height: 80,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Pick your option\nSee who has a similar mind.',
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Icon(
                    Icons.mic_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                  Icon(
                    Icons.arrow_circle_right_rounded,
                    color: Colors.white,
                    size: 50,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.grey[900],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('lib/assets/screens.png',height: 30,width: 30,color: Colors.white,),
                Image.asset('lib/assets/fire.png',height: 30,width: 30,color: Colors.white,),
                Image.asset('lib/assets/message.png',height: 30,width: 30,color: Colors.white,),
                Image.asset('lib/assets/propic4.png',height: 30,width: 30,color: Colors.white, )

              ],
            ),
          )
        ],
      ),
    );
  }
}
