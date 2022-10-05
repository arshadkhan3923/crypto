import 'package:account_screen1/screens/newsnotification.dart';
import 'package:account_screen1/screens/notification.dart';
import 'package:account_screen1/screens/trade_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../main.dart';

class NewsPaperScreen extends StatefulWidget {
  const NewsPaperScreen({Key? key}) : super(key: key);

  @override
  _NewsPaperScreenState createState() => _NewsPaperScreenState();
}

class _NewsPaperScreenState extends State<NewsPaperScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 20),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: const Color(0xff265955),
                borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {
                Get.to(() => const Home());
              },
              child: const Icon(
                Icons.arrow_back,
                size: 15,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 19,
            ),
            const Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              width: 245,
            ),
            InkWell(
              onTap: () {
                Get.to(() => const NotificationScreen());
              },
              child: Image.asset('assets/active 1.png'),
            )
          ],
        ),
        Expanded(child:
        ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: 3,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Get.to(()=>NewsNotification());
                },
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff265955)),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image77.png',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Best trading report \n package',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'Lorem Ipsum is simply \n dummy text of the printing \n and typesetting industry.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 95,
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Read more.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 25,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.calendar_today_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'April 6, 2022',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 25,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(Icons.watch_later_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '06:00-08:00 pm',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }
            ),
        ),
      ],
    ),
    );
  }
}
