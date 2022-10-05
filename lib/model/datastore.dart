import 'package:account_screen1/model/trad_model.dart';

class DataStore{

  List <TradeData> trades =[
    TradeData(title: 'Bitcoin', image1: 'assets/bitcoin1.png', image: 'assets/image1.png', image2: 'assets/decrease.png', price: '301,100', eth: '2 BTC', plus: '-4.2'),
 TradeData(title: 'Ethereum', image1: 'assets/ethereum1.png', image: 'assets/image0.png', image2: 'assets/decrease.png', price: '401,100', eth: '3 ETH', plus: '-1.2'),
 TradeData(title: 'Solana', image1: 'assets/solana1.png', image: 'assets/image7.png', image2: 'assets/decrease11.png', price: '301,100', eth: '1 SOL', plus: '+2.2'),
 TradeData(title: 'Tether', image1: 'assets/tether01.png', image: 'assets/image04.png', image2: 'assets/decrease.png', price: '301,100', eth: '4 USDT', plus: '-4.2'),
 TradeData(title: 'USD Coin', image1: 'assets/dollar-symbol1.png', image: 'assets/image08.png', image2: 'assets/decrease11.png', price: '301,100', eth: '1 USDC', plus: '+2.2'),
  ];


}