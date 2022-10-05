
import 'package:account_screen1/screens/movers_screen.dart';
import 'package:account_screen1/screens/notification.dart';
import 'package:account_screen1/screens/trade_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';

class MarketScreen extends StatefulWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  _MarketScreenState createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 19,
                ),
                const Text(
                  'Market',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  width: 220,
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
              padding: const EdgeInsets.only(left: 20, top: 10),
              height: 135,
              width: 380,
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    padding: const EdgeInsets.only(left: 15, top: 4),
                    height: 50,
                    width: 318,
                    decoration: BoxDecoration(
                      color: const Color(0xff265955),
                      borderRadius: BorderRadius.circular(10),
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
                                  fontWeight: FontWeight.w600),
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
                              '100,000.99 USD',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
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
                  SizedBox(
                    height: 25,
                    width: 20,
                  ),
                  const Text(
                    'Top Movers',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child:GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 12,
                  padding: const EdgeInsets.all(10),
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Get.to(()=>const TopMoversScreen());
                      },
                      child:  Container(
                        padding: const EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                            color: const Color(0xff265955),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/crypto.png'),
                                const SizedBox(width: 10,),
                                const Text('HT',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),)
                              ],
                            ),
                            Image.asset('assets/image99.png'),
                            const SizedBox(height: 5,),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              margin: const EdgeInsets.only(left: 6),
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Row(
                                children:  [
                                  const Text('0.95%'),
                                  const SizedBox(width: 4,),
                                  Image.asset('assets/Vector55.png')
                                ],
                              ),
                            ),
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
