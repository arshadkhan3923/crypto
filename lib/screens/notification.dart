import 'package:account_screen1/screens/trade_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
            children: const [
              SizedBox(
                width: 19,
              ),
              Text(
                'Notification',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),

            ],
          ),
          Expanded(child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  height: 55,
                  padding: const EdgeInsets.only(left: 5,top: 4,bottom: 3),
                  margin: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xff265955)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('New Notification',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      SizedBox(height: 5,),
                      Text('24 june, 2023',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                    ],
                  ),
                );
              }
          ),),
        ],
      )
    );
  }
}

