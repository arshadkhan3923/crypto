import 'package:account_screen1/screens/trade_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class TopMoversScreen extends StatefulWidget {
  const TopMoversScreen({Key? key}) : super(key: key);

  @override
  _TopMoversScreenState createState() => _TopMoversScreenState();
}

class _TopMoversScreenState extends State<TopMoversScreen> {
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
         const SizedBox(height: 10,),
          Center(
            child: Image.asset('assets/crypto.png'),
          ),
          const SizedBox(height: 5,),
      const Center(
        child:   Text('BITCOIN(BTC)',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
        ),
      ),
          const SizedBox(height: 5,),
          const Center(
           child:   Text('\$320,531.09',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500
          ),
        ),
      ),
          const SizedBox(height: 5,),  const SizedBox(height: 5,),
         Center(
           child:  Container(
             height: 282,
             width:328,
             child: Image.asset('assets/image220.png'),
           ),
         ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 33,
                width: 103,
                decoration:  BoxDecoration(
                 border: Border.all(color: Colors.black),
                  color: const Color(0xff265955),
                  borderRadius: BorderRadius.circular(5)

                ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Image.asset('assets/hand1.png'),
                   const Text('Buy',style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.w600,
                     fontSize: 16
                   ),)
                 ],
               ),
              ),
              Container(
                height: 33,
                width: 103,
                decoration:  BoxDecoration(
                 border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)

                ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: const [
                   Icon(Icons.add_shopping_cart,color: Colors.black,),
                   // Image.asset('assets/hand1.png'),
                    Text('sell',
                      style: TextStyle(
                     color: Colors.black,
                     fontWeight: FontWeight.w600,
                     fontSize: 16
                   ),
                    )
                 ],
               ),
              ),
            ],
          ),
        Padding(padding: const EdgeInsets.only(left: 20,top: 10),
          child:   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Details',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                ),
              ),
              Text('Lorem Ipsum is simply dummy text of \n the printing and typesetting industry.\nLorem Ipsum is simply dummy text of \n the printing and typesetting industry.\n Lorem Ipsum is simply dummy tex',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14
                ),
              ),
            ],
          ),
        ),



        ],
      ),
    );
  }
}
