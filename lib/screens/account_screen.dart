
import 'package:account_screen1/screens/trade_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../main.dart';
import 'notification.dart';


class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}
class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(vsync:,length: 3);
    return DefaultTabController(length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
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
                    width: 218,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const NotificationScreen());
                    },
                    child: Image.asset('assets/active 1.png'),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                padding: const EdgeInsets.only(left: 12,top: 15),
                height: 205,
                width: 318,

                decoration: BoxDecoration(
                  color: const Color(0xff265955),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const SizedBox(width: 20,height: 10,),
                    const Text('#92454544',style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Color(0xffFFFFFF),
                    ),
                    ),
                    const SizedBox(height: 5,width: 20,),
                    const Text('Demo Account',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xffFFFFFF),
                    ),
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [

                        Text("10,0000,000,00 USD",style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Color(0xffFFFFFF),
                        ),
                        ),
                        SizedBox(width: 73,),
                        Icon(Icons.error_outline,color: Colors.white,)
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 36,
                          width: 120,
                          decoration: BoxDecoration(
                            color: const Color(0xffeec2c0c0),
                            // color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: const [
                              SizedBox(width: 5,),
                              Icon(Icons.download_rounded,color: Color(0xff265955),),
                              SizedBox(width: 4,),
                              Text('Deposit',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13),),
                            ],
                          ),
                        ),
                        Container(
                          height: 36,
                          width: 120,
                          decoration: BoxDecoration(
                            color: const Color(0xff265955),
                            // color: Colors.green,
                            border: Border.all(color: Colors.white,width: 1),

                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(

                            children: const [
                              SizedBox(width: 5,),
                              Icon(Icons.forward_sharp,color: Colors.white,),
                              SizedBox(width: 4,),
                              Text('Withdraw',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 13)),
                            ],
                          ),
                        ),
                        const Icon(Icons.more_vert,color: Colors.white,),
                      ],
                    )
                  ],
                ),
              ),
              Container(

                child: TabBar(

                  labelColor: Colors.black,
                  // unselectedLabelColor: Colors.white12,
                  tabs: [
                    const Text('OPEN',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300,
                        color: Colors.black,
                    ),),
                    const Text('PENDING',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300,
                        color: Colors.black
                    ),),
                    const Text('CLOSE',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,
                        color: Colors.black
                    ),),
                    Image.asset('assets/Vectordat.png',height: 26,width: 26,),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height:200,
                child:  const TabBarView(
                  children: [
                    Text(''),
                    Text(''),
                    Text(''),
                  ],
                ),
              )


            ],
          ),

        ));
  }
}
