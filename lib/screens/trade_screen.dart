import 'package:account_screen1/model/datastore.dart';
import 'package:account_screen1/screens/profile_Screen.dart';
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../main.dart';
import '../model/trad_model.dart';
import 'account_screen.dart';
import 'market_Screen.dart';
import 'newspaper_screen.dart';
import 'notification.dart';
class TradeScreen extends StatefulWidget {

  const TradeScreen({Key? key}) : super(key: key);


  @override
  _TradeScreenState createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(

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
                    Get.back();
                  },
                  child:  const Icon(
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
                  'Trade',
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
                    Get.to(() =>  NotificationScreen());
                  },
                  child: Image.asset('assets/active 1.png'),
                )
              ],
            ),
            Center(
              child:
              Container(
                margin: const EdgeInsets.only(top: 15),
                padding: EdgeInsets.only(left: 15),
                height: 50,
                width: 318,
                decoration: BoxDecoration(
                  color: const Color(0xff265955),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          '#92454544',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 28.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '\$100,000.99 USD',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Demo Accounts',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(

              child: const TabBar(
                padding: EdgeInsets.only(top: 5),
                tabs: [

                  Icon(Icons.search,color: Colors.black,size: 15.0,),
                  Text('Favourites',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w300,color: Colors.black),),
                  Text('Majors',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w300,color: Colors.black),),
                  Text('Metals',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w300,color: Colors.black),),
                  Text('Crypto',style: TextStyle(fontSize: 9,fontWeight: FontWeight.w300,color: Colors.black),),
                ],
              ),
            ),
Expanded(child:             Container(
  width: double.infinity,
  height: 500,
  child: TabBarView(
    children: [
      Container(
        height: 40,
        width: 40,
        // padding: const EdgeInsets.only(bottom: 450,right: 10),
        // color: Colors.black,
        child:  AnimSearchBar(
          width: 340,
          textController: textController,
          onSuffixTap: (){
            setState(() {
              textController.clear();
            });
          },
          color: Colors.white60,
          autoFocus: true,
          closeSearchOnSuffixTap: true,
          rtl: true,
          animationDurationInMilli: 2000,
          helpText: 'Search here...',
        ),
      ),
      Container(
        margin:const EdgeInsets.all(13),
        height: 480,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff265955),
        ),
        child: ListView(
          children: [
            Padding(padding: const EdgeInsets.only(left: 15,right: 15),
              child:  Container(
                height: 55,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/bitcoin1.png',width: 30, height: 30,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 8,),
                        Text('Bitcoin',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('2 BTC', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),),

                      ],
                    ),
                    Image.asset('assets/image1.png'),
                    Column(
                      children:  [
                        const SizedBox(height: 8,),
                        const Text('\$303,100',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Row(
                          children: [

                            Image.asset('assets/decrease.png'),
                            const SizedBox(width: 4,),
                            const Text('-4.2',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                              ),
                            ),


                          ],
                        )
                      ],
                    ),
                  ],
                ),

              ),
            ),
            const SizedBox(height: 12,),
            Padding(padding: const EdgeInsets.only(left: 15,right: 15),
              child:  Container(
                height: 55,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/ethereum1.png',width: 30, height: 30,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 8,),
                        Text('Ethereum',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('3 ETH', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),),

                      ],
                    ),
                    Image.asset('assets/image0.png'),
                    Column(
                      children:  [
                        const SizedBox(height: 8,),
                        const Text('\$401,100',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Row(
                          children: [

                            Image.asset('assets/decrease.png'),
                            const SizedBox(width: 4,),
                            const Text('-1.2',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                              ),
                            ),


                          ],
                        )
                      ],
                    ),
                  ],
                ),

              ),
            ),
            const SizedBox(height: 12,),
            Padding(padding: const EdgeInsets.only(left: 15,right: 15),
              child:  Container(
                height: 55,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/solana1.png',width: 30, height: 30,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 8,),
                        Text('Solana',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('1 SOL', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),),

                      ],
                    ),
                    Image.asset('assets/image7.png'),
                    Column(
                      children:  [
                        const SizedBox(height: 8,),
                        const Text('\$301,100',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Row(
                          children: [

                            Image.asset('assets/decrease11.png'),
                            const SizedBox(width: 4,),
                            const Text('+2.2',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                              ),
                            ),


                          ],
                        )
                      ],
                    ),
                  ],
                ),

              ),
            ),
            const SizedBox(height: 12,),
            Padding(padding: const EdgeInsets.only(left: 15,right: 15),
              child:  Container(
                height: 55,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/tether01.png',width: 30, height: 30,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 8,),
                        Text('Tether',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('4 USDT', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),),

                      ],
                    ),
                    Image.asset('assets/image1.png'),
                    Column(
                      children:  [
                        const SizedBox(height: 8,),
                        const Text('\$301,100',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Row(
                          children: [

                            Image.asset('assets/decrease.png'),
                            const SizedBox(width: 4,),
                            const Text('-4.2',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                              ),
                            ),


                          ],
                        )
                      ],
                    ),
                  ],
                ),

              ),
            ),
            const SizedBox(height: 12,),
            Padding(padding: const EdgeInsets.only(left: 15,right: 15),
              child:  Container(
                height: 55,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/dollar-symbol1.png',width: 30, height: 30,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 8,),
                        Text('USD Coin',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('1 USDC', style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),),

                      ],
                    ),
                    Image.asset('assets/image7.png'),
                    Column(
                      children:  [
                        const SizedBox(height: 8,),
                        const Text('\$301,100',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 4,),
                        Row(
                          children: [

                            Image.asset('assets/decrease11.png'),
                            const SizedBox(width: 4,),
                            const Text('+2.2',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),

              ),
            ),
          ],
        ),
      ),
      const Text(''),
      const Text(''),
      const Text(''),
    ],
  ),
),
)          ],
        ),
      ),
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _pages = <Widget>[
    const AccountPage(),
    const TradeScreen(),
    const NewsPaperScreen(),
    const MarketScreen(),
    const ProfileScreen(),
  ];
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff265955),
        currentIndex: _selectedIndex,

        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items:  [
          BottomNavigationBarItem(
            icon:  Image.asset('assets/accountpic1.png',width: 28,height: 22,),
            label: 'account',backgroundColor: const Color(0xff265955),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/money-growth.png',width: 24,cacheWidth: 24,),
            label: 'Trade',backgroundColor: const Color(0xff265955),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/news11.png',height: 22,width: 22,),
            label: 'newspaper',backgroundColor: const Color(0xff265955),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/financial-profit.png',height: 22,width: 22,),
            label: 'market',backgroundColor: const Color(0xff265955),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/profile_image1.png',height: 22,width: 22),
            label: 'profile',
            backgroundColor: const Color(0xff265955),
          ),
        ],
      ),

      body: _pages[_selectedIndex],
    );
  }
}