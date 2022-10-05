import 'package:account_screen1/main.dart';
import 'package:account_screen1/screens/account_screen.dart';
import 'package:account_screen1/screens/trade_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'newspaper_screen.dart';
class NewsNotification extends StatelessWidget {
  const NewsNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
            // crossAxisAlignment: CrossAxisAlignment.,
            children: [
              Stack(
                children: [
                  Container(
                    height: 196,
                    child: Image.asset('assets/image06.png'),
                  ),
                  Positioned(
                      top: 25,
                      left: 15,
                      child:  Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: const Color(0xff265955),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child:  InkWell(
                          onTap: (){

                            Get.to(()=> const Home ());
                          },
                          child:   const Icon(Icons.arrow_back,size: 15,),
                        ),
                      )
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Padding(
              padding:  const EdgeInsets.only(right: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
    Text('Best trading report package april 6,2022',
    style: TextStyle(
    fontSize: 16,fontWeight: FontWeight.w600,
    ),
    ),
    SizedBox(height: 10,),
    Text('Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.',
    style: TextStyle(fontWeight: FontWeight.w400,
    fontSize: 16),),
    Text('Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.',
    style: TextStyle(fontWeight: FontWeight.w400,
    fontSize: 16),),
    Text('Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.',
    style: TextStyle(fontWeight: FontWeight.w400,
    fontSize: 16),),
    Text('Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.',
    style: TextStyle(fontWeight: FontWeight.w400,
    fontSize: 16),),
    Text('Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.',
    style: TextStyle(fontWeight: FontWeight.w400,
    fontSize: 16),),
    Text('Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry.',
    style: TextStyle(fontWeight: FontWeight.w400,
    fontSize: 16),),
    ],
    ),

    ),
    ]
    ),
    );
  }
}
