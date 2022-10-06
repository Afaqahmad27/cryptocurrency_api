// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'dart:async';
import 'dart:convert';

import 'package:app_coin/box_container.dart';
import 'package:app_coin/model/coin_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
 List<CoinModel> coinList=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCryptoData();
  }
  Future<List<CoinModel>> getCryptoData()async{
    var url=Uri.parse('https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false%20Server%20response%20CodeDetails');
  Response response=await get(url);
  if(response.statusCode==200){
    var decodedData=jsonDecode(response.body);
    for(Map<String,dynamic> myMap in decodedData){
      coinList.add(CoinModel.fromJson(myMap));
    }
  }
  setState((){
    coinList;
  });
  return coinList;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
          itemCount: coinList.length,
          itemBuilder: (context,index)=>BoxContainer(
        image: coinList[index].image,
        titleText: coinList[index].name,
        subTitle: coinList[index].symbol,
        valueText: coinList[index].current_price,
        valueText2: coinList[index].price_change_24h,
        valueText3: coinList[index].price_change_percentage_24h,
      )),
    ));
  }
}
