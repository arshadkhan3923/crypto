import 'package:account_screen1/screens/trade_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import 'newsnotification.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 15,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(
                width: 19,
              ),
              const Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                width: 223,
              ),
              InkWell(
                onTap: () {
                  // Get.to(() => const NewsNotification());
                },
                child: Image.asset('assets/profile.png',height: 24,width: 24,),
              )
            ],
          ),
         Center(
           child:  Container(

             margin: const EdgeInsets.only(top: 20),
             padding: const EdgeInsets.only(left: 10),
             height: 40,
             width: 319,
             decoration:  BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               color: const Color(0xff265955),
             ),
             child: Row(
               children:  const [
                 Text('Mr.John',
                 style: TextStyle(color: Colors.white,
                 fontSize: 16,
                 fontWeight: FontWeight.w400),
                   ),
                 SizedBox(width: 150,),
                 Icon(Icons.markunread_mailbox,color: Colors.white,),
                 Text("\$7,205.9",
                   style: TextStyle(color: Colors.white,
                       fontSize: 16,
                       fontWeight: FontWeight.w400),),

               ],
             ),
           ),
         ),
         const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.only(left: 17),
            height: 150,
            width: 400,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text('Generale',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
               const SizedBox(height: 6,),
                Row(
                  children: const [
                    SizedBox(width: 10,height: 10,),
                    Text('Notification',style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    SizedBox(width: 214,height: 10,),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const SizedBox(height: 6,),
                Row(
                  children: const [
                    SizedBox(width: 10,),
                    Text('My Account',style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    SizedBox(width: 216,),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const SizedBox(height: 6,),
                Row(
                  children: const [
                    SizedBox(width: 10,),
                    Text('Contact Us',style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    SizedBox(width: 218,),
                    Icon(Icons.arrow_forward_ios)
                  ],
                )

              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 17),
            height: 250,
            width: 400,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text('Security',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                const SizedBox(height: 6,),
                Row(
                  children: const [
                    SizedBox(width: 10,height: 10,),
                    Text('Change password',style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                    SizedBox(width: 180,height: 10,),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const SizedBox(height: 6,),
                const ListTile(
                  title:   Text('Privacy policy',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  subtitle: Text('Choose what data you share with us',style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
